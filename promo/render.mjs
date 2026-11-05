import {spawn, execFileSync} from 'node:child_process';
import {mkdirSync, readFileSync, writeFileSync, existsSync, statSync} from 'node:fs';
import {dirname, join} from 'node:path';
import {fileURLToPath, pathToFileURL} from 'node:url';
import puppeteer from 'puppeteer-core';
import ffmpegPath from 'ffmpeg-static';

const root = dirname(fileURLToPath(import.meta.url));
const repo = join(root, '..');
const build = join(root, 'build');
const out = join(root, 'out');
const fps = 30;
const chrome = process.env.CHROME_PATH ?? '/Applications/Google Chrome.app/Contents/MacOS/Google Chrome';
const args = process.argv.slice(2);
const stills = args.includes('--stills') ? args[args.indexOf('--stills') + 1].split(',').map(Number) : null;
const quick = args.includes('--quick');

mkdirSync(join(build, 'voice'), {recursive: true});
mkdirSync(out, {recursive: true});

const script = JSON.parse(readFileSync(join(root, 'script.json'), 'utf8'));
const strollers = JSON.parse(readFileSync(join(repo, 'backend/data/strollers.json'), 'utf8'));
const shop = JSON.parse(readFileSync(join(repo, 'backend/data/shop.json'), 'utf8'));

function run(cmd, cmdArgs) {
  return new Promise((resolve, reject) => {
    const child = spawn(cmd, cmdArgs, {stdio: ['ignore', 'ignore', 'pipe']});
    let err = '';
    child.stderr.on('data', d => { err += d; });
    child.on('close', code => code === 0 ? resolve(err) : reject(new Error(`${cmd} failed:\n${err.slice(-2000)}`)));
  });
}

async function durationOf(file) {
  const info = await run(ffmpegPath, ['-i', file, '-f', 'null', '-']).catch(e => e.message);
  const [, h, m, s] = info.match(/Duration: (\d+):(\d+):([\d.]+)/);
  return Number(h) * 3600 + Number(m) * 60 + Number(s);
}

const edgeTts = join(root, '.venv', 'bin', 'edge-tts');

async function synthesize(text, file) {
  if (script.engine === 'say') {
    execFileSync('say', ['-v', script.voice, '-r', String(script.rate), '-o', file, text]);
    return;
  }
  if (!existsSync(edgeTts)) throw new Error('edge-tts not installed, run: npm run setup');
  for (let attempt = 1; ; attempt++) {
    try {
      await run(edgeTts, ['--voice', script.voice, `--rate=${script.rate}`, '--text', text, '--write-media', file]);
      if (statSync(file).size > 0) return;
      throw new Error('empty audio');
    } catch (error) {
      if (attempt >= 8) throw error;
      process.stdout.write(`voice retry ${attempt}…\n`);
      await new Promise(r => setTimeout(r, 3000 * attempt));
    }
  }
}

async function synthesizeCached(text, file) {
  const key = `${script.engine}|${script.voice}|${script.rate}|${text}`;
  const keyFile = `${file}.key`;
  const isCached = existsSync(file) && statSync(file).size > 0 && existsSync(keyFile) && readFileSync(keyFile, 'utf8') === key;
  if (isCached) return;
  await synthesize(text, file);
  writeFileSync(keyFile, key);
}

async function makeVoices() {
  const voices = [];
  const extension = script.engine === 'say' ? 'aiff' : 'mp3';
  for (const scene of script.scenes) {
    const raw = join(build, 'voice', `${scene.id}.${extension}`);
    const wav = join(build, 'voice', `${scene.id}.wav`);
    await synthesizeCached(scene.voice, raw);
    const gain = script.engine === 'say' ? 1.6 : 1.2;
    await run(ffmpegPath, ['-y', '-i', raw, '-af', `silenceremove=start_periods=1:start_threshold=-50dB,areverse,silenceremove=start_periods=1:start_threshold=-50dB,areverse,highpass=f=70,acompressor=threshold=-20dB:ratio=3:attack=5:release=80,volume=${gain}`, '-ar', '48000', '-ac', '1', wav]);
    voices.push({id: scene.id, file: wav, duration: await durationOf(wav)});
  }
  return voices;
}

const voiceLead = id => id === 'intro' ? .9 : id === 'outro' ? .9 : .35;

async function renderFrames(scenes) {
  const browser = await puppeteer.launch({executablePath: chrome, headless: true, protocolTimeout: 120000, userDataDir: join(build, 'chrome-profile'), args: ['--no-first-run', '--no-default-browser-check', '--disable-extensions', '--allow-file-access-from-files', '--force-color-profile=srgb', '--hide-scrollbars']});
  const page = await browser.newPage();
  await page.setViewport({width: 1080, height: 1920, deviceScaleFactor: 1});
  await page.goto(pathToFileURL(join(root, 'index.html')).href, {waitUntil: 'load'});
  await page.evaluate(() => document.fonts.ready);
  const timeline = await page.evaluate(data => window.setup(data), {scenes, strollers, shop, botHandle: script.botHandle});

  if (stills) {
    mkdirSync(join(build, 'stills'), {recursive: true});
    for (const t of stills) {
      await page.evaluate(x => window.renderAt(x), t);
      await page.screenshot({path: join(build, 'stills', `t${String(t).padStart(5, '0')}.png`)});
    }
    await browser.close();
    return timeline;
  }

  const video = join(build, 'video.mp4');
  const encoder = spawn(ffmpegPath, ['-y', '-f', 'image2pipe', '-framerate', String(fps), '-c:v', 'mjpeg', '-i', '-', '-c:v', 'libx264', '-preset', quick ? 'veryfast' : 'slow', '-crf', quick ? '24' : '17', '-pix_fmt', 'yuv420p', '-movflags', '+faststart', video], {stdio: ['pipe', 'ignore', 'pipe']});
  let encoderLog = '';
  encoder.stderr.on('data', d => { encoderLog = (encoderLog + d).slice(-4000); });
  const encoded = new Promise((resolve, reject) => encoder.on('close', code => code === 0 ? resolve() : reject(new Error(encoderLog))));
  const frames = Math.ceil(timeline.total * fps);
  const started = Date.now();
  for (let f = 0; f < frames; f++) {
    await page.evaluate(x => window.renderAt(x), f / fps);
    const jpeg = await page.screenshot({type: 'jpeg', quality: quick ? 80 : 94, optimizeForSpeed: true});
    if (!encoder.stdin.write(jpeg)) await new Promise(r => encoder.stdin.once('drain', r));
    if (f % (fps * 5) === 0) process.stdout.write(`\rframes ${f}/${frames} · ${((Date.now() - started) / 1000).toFixed(0)}s`);
  }
  encoder.stdin.end();
  await encoded;
  await browser.close();
  process.stdout.write(`\rframes ${frames}/${frames} · done\n`);
  return timeline;
}

function musicExpression(total) {
  const chords = [[130.81, 164.81, 196.0, 246.94], [110.0, 130.81, 164.81, 196.0], [87.31, 110.0, 130.81, 164.81], [98.0, 123.47, 146.83, 196.0]];
  const k = 'mod(floor(t/4),4)';
  const pick = v => `if(eq(${k},0),${chords[0][v]},if(eq(${k},1),${chords[1][v]},if(eq(${k},2),${chords[2][v]},${chords[3][v]})))`;
  const env = 'min(1,mod(t,4)/0.9)*min(1,(4-mod(t,4))/1.1)';
  const voices = [0, 1, 2, 3].map(v => `(sin(2*PI*${pick(v)}*t)+0.25*sin(4*PI*${pick(v)}*t))`).join('+');
  const sparkle = `0.18*sin(2*PI*2*${pick(3)}*t)*pow(max(0,1-mod(t,1)/0.9),3)`;
  const fade = `min(1,t/2.5)*min(1,(${total.toFixed(2)}-t)/2.5)`;
  return `0.09*${fade}*${env}*(${voices})/4+0.05*${fade}*${sparkle}`;
}

async function mixAudio(voices, scenes, taps, total) {
  const tap = join(build, 'tap.wav');
  await run(ffmpegPath, ['-y', '-f', 'lavfi', '-i', "aevalsrc='0.55*sin(2*PI*1250*t)*exp(-t*45)+0.25*sin(2*PI*2500*t)*exp(-t*70)':s=48000:d=0.15", tap]);
  const inputs = [];
  const filters = [];
  const labels = [];
  inputs.push('-f', 'lavfi', '-i', `aevalsrc='${musicExpression(total)}':s=48000:d=${total.toFixed(2)}`);
  filters.push('[0:a]lowpass=f=2200,aecho=0.8:0.6:180|320:0.3|0.2,volume=1.0[music]');
  labels.push('[music]');
  voices.forEach((v, i) => {
    const scene = scenes.find(s => s.id === v.id);
    const delay = Math.round((scene.start + voiceLead(v.id)) * 1000);
    inputs.push('-i', v.file);
    filters.push(`[${i + 1}:a]adelay=${delay}:all=1[v${i}]`);
    labels.push(`[v${i}]`);
  });
  const tapIndex = voices.length + 1;
  inputs.push('-i', tap);
  filters.push(`[${tapIndex}:a]asplit=${taps.length}${taps.map((_, i) => `[ts${i}]`).join('')}`);
  taps.forEach((t, i) => {
    filters.push(`[ts${i}]adelay=${Math.round(t * 1000)}:all=1,volume=0.55[t${i}]`);
    labels.push(`[t${i}]`);
  });
  filters.push(`${labels.join('')}amix=inputs=${labels.length}:normalize=0:duration=longest,atrim=0:${total.toFixed(2)},alimiter=limit=0.9[aout]`);
  const audio = join(build, 'audio.wav');
  await run(ffmpegPath, ['-y', ...inputs, '-filter_complex', filters.join(';'), '-map', '[aout]', '-ar', '48000', '-ac', '2', audio]);
  return audio;
}

const voices = await makeVoices();
const scenes = script.scenes.map(s => {
  const voice = voices.find(v => v.id === s.id);
  return {...s, duration: Math.max(s.minDuration, voiceLead(s.id) + voice.duration + .8)};
});
let start = 0;
const timed = scenes.map(s => { const r = {...s, start}; start += s.duration; return r; });
console.log(timed.map(s => `${s.id.padEnd(13)} ${s.start.toFixed(2).padStart(6)}s  +${s.duration.toFixed(2)}s`).join('\n'));

const timeline = await renderFrames(scenes);
if (!stills) {
  const audio = await mixAudio(voices, timed, timeline.taps, timeline.total);
  const final = join(out, 'kolyasochnaya_promo.mp4');
  await run(ffmpegPath, ['-y', '-i', join(build, 'video.mp4'), '-i', audio, '-c:v', 'copy', '-af', 'loudnorm=I=-16:TP=-1.5:LRA=11', '-ar', '48000', '-c:a', 'aac', '-b:a', '192k', '-shortest', '-movflags', '+faststart', final]);
  console.log(`\n${final} · ${timeline.total.toFixed(1)}s`);
} else {
  console.log(`stills → ${join(build, 'stills')}`);
}
