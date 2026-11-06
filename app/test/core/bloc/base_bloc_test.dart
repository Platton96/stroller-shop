import 'package:flutter_test/flutter_test.dart';
import 'package:stroller_shop/core/bloc/base_bloc.dart';
import 'package:stroller_shop/core/exceptions/app_exception.dart';

import '../../helpers/test_infrastructure.dart';

class _ParallelBloc extends BaseBloc<Future<void> Function(), Exception?> {
  _ParallelBloc() : super(null) {
    on<Future<void> Function()>((event, emit) => event());
  }

  @override
  void handleGeneralException(
    Future<void> Function() event,
    Emitter<Exception?> emit,
    Exception exception,
  ) => emit(exception);
}

void main() {
  setUpAll(setUpTestInfrastructure);

  test('passes the original exception from a failed record .wait', () async {
    const exception = NotFoundException();
    final bloc = _ParallelBloc()
      ..add(() => (Future.value(1), Future<String>.error(exception)).wait);

    await expectLater(bloc.stream, emits(exception));
    await bloc.close();
  });

  test('passes the original exception from a failed 3-record .wait', () async {
    const exception = UnavailableException();
    final bloc = _ParallelBloc()
      ..add(() => (Future.value(1), Future.value(''), Future<bool>.error(exception)).wait);

    await expectLater(bloc.stream, emits(exception));
    await bloc.close();
  });
}
