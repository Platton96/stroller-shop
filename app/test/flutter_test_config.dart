import 'dart:async';

import 'helpers/golden/golden_test_executable.dart';

Future<void> testExecutable(FutureOr<void> Function() testMain) => goldenTestExecutable(testMain);
