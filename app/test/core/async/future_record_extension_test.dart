import 'package:flutter_test/flutter_test.dart';
import 'package:stroller_shop/core/async/future_record_extension.dart';
import 'package:stroller_shop/core/exceptions/app_exception.dart';

void main() {
  group('waitAll', () {
    test('returns every result in record order', () async {
      final (number, text, flag) = await (
        Future.value(1),
        Future.delayed(Duration.zero, () => 'two'),
        Future.value(true),
      ).waitAll;

      expect((number, text, flag), (1, 'two', true));
    });

    test('rethrows the original exception instead of ParallelWaitError', () async {
      const exception = AppException.noConnection();

      await expectLater(
        (Future.value(1), Future<String>.error(exception)).waitAll,
        throwsA(exception),
      );
    });
  });
}
