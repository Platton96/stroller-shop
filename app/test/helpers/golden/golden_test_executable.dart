import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

const _manropeFiles = {
  'Manrope_regular': 'Manrope-Regular.ttf',
  'Manrope_500': 'Manrope-Medium.ttf',
  'Manrope_600': 'Manrope-SemiBold.ttf',
  'Manrope_700': 'Manrope-Bold.ttf',
  'Manrope_800': 'Manrope-ExtraBold.ttf',
};

Future<void> goldenTestExecutable(FutureOr<void> Function() testMain) async {
  TestWidgetsFlutterBinding.ensureInitialized();
  Intl.defaultLocale = 'ru';
  GoogleFonts.config.allowRuntimeFetching = false;
  await _loadManifestFonts();
  await _loadManrope();
  await testMain();
}

Future<void> _loadManifestFonts() async {
  final manifest = await rootBundle.loadString('FontManifest.json');
  final families = (jsonDecode(manifest) as List<Object?>).whereType<Map<String, Object?>>();
  for (final family in families) {
    if (family case {'family': final String name, 'fonts': final List<Object?> fonts}) {
      final loader = FontLoader(name);
      for (final font in fonts) {
        if (font case {'asset': final String asset}) {
          loader.addFont(rootBundle.load(asset));
        }
      }
      await loader.load();
    }
  }
}

Future<void> _loadManrope() async {
  for (final MapEntry(key: family, value: fileName) in _manropeFiles.entries) {
    final bytes = File('assets/google_fonts/$fileName').readAsBytesSync();
    await (FontLoader(family)..addFont(Future.value(ByteData.sublistView(bytes)))).load();
  }
}
