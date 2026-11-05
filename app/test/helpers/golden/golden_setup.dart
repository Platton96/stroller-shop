import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:meta/meta.dart';
import 'package:mocktail/mocktail.dart';
import 'package:stroller_shop/di/service_locator.dart';
import 'package:stroller_shop/l10n/generated/s.dart';
import 'package:stroller_shop/ui_kit/theme/app_theme.dart';

import '../test_infrastructure.dart';

typedef GoldenRegistration = void Function(GetIt getIt);

const goldenScreenSize = Size(390, 844);

class GoldenScenario {
  final String name;
  final Widget widget;
  final List<GoldenRegistration> registration;
  final Size size;

  const GoldenScenario(
    this.name, {
    required this.widget,
    this.registration = const [],
    this.size = goldenScreenSize,
  });
}

class GoldenVariant {
  final String name;
  final ThemeData Function() theme;

  const GoldenVariant({required this.name, required this.theme});
}

const _goldenVariants = [GoldenVariant(name: 'light', theme: AppTheme.light)];
final _snakeCasePattern = RegExp(r'^[a-z][a-z0-9_]*$');

@isTest
void goldenTest(String fileName, {required ValueGetter<List<GoldenScenario>> scenarios}) {
  assert(_snakeCasePattern.hasMatch(fileName), 'Golden file name "$fileName" must be snake_case');
  for (final scenario in scenarios()) {
    assert(
      _snakeCasePattern.hasMatch(scenario.name),
      'Scenario name "${scenario.name}" must be snake_case',
    );
    testWidgets('$fileName - ${scenario.name}', (tester) async {
      setUpTestInfrastructure();
      for (final variant in _goldenVariants) {
        await _pumpScenario(tester, scenario, variant);
        await expectLater(
          find.byType(GoldenApp),
          matchesGoldenFile('goldens/$fileName/${variant.name}/${scenario.name}.png'),
        );
      }
    }, tags: ['golden']);
  }
}

void registerBloc<B extends BlocBase<T>, T>(GetIt getIt, B bloc, T state) {
  when(() => bloc.state).thenReturn(state);
  getIt.registerFactory<B>(() => bloc);
}

class GoldenApp extends StatelessWidget {
  final ThemeData theme;
  final Widget child;

  const GoldenApp({required this.theme, required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme,
      locale: const Locale('ru'),
      supportedLocales: S.supportedLocales,
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      home: child,
    );
  }
}

Future<void> _pumpScenario(
  WidgetTester tester,
  GoldenScenario scenario,
  GoldenVariant variant,
) async {
  tester.view
    ..devicePixelRatio = 1
    ..physicalSize = scenario.size;
  addTearDown(tester.view.reset);
  final getIt = ServiceLocator.getIt;
  await getIt.reset();
  for (final register in scenario.registration) {
    register(getIt);
  }
  final tickerKey = GlobalKey<_GoldenTickerScopeState>();
  await tester.pumpWidget(
    _GoldenTickerScope(
      key: tickerKey,
      child: GoldenApp(theme: variant.theme(), child: scenario.widget),
    ),
  );
  await tester.pump();
  try {
    await tester.pumpAndSettle(
      const Duration(milliseconds: 100),
      EnginePhase.sendSemanticsUpdate,
      const Duration(seconds: 2),
    );
    // ignore: avoid_catching_errors
  } on FlutterError {
    tickerKey.currentState?.disableTickers();
    await tester.pumpAndSettle();
  }
}

class _GoldenTickerScope extends StatefulWidget {
  final Widget child;

  const _GoldenTickerScope({required this.child, super.key});

  @override
  State<_GoldenTickerScope> createState() => _GoldenTickerScopeState();
}

class _GoldenTickerScopeState extends State<_GoldenTickerScope> {
  var _isEnabled = true;

  @override
  Widget build(BuildContext context) {
    return TickerMode(enabled: _isEnabled, child: widget.child);
  }

  void disableTickers() => setState(() => _isEnabled = false);
}
