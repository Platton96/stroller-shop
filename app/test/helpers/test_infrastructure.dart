import 'package:mocktail/mocktail.dart';
import 'package:stroller_shop/core/bloc/base_bloc.dart';
import 'package:stroller_shop/core/navigation/app_navigator.dart';
import 'package:stroller_shop/core/toast/toast_service.dart';

class MockAppNavigator extends Mock implements AppNavigator {}

class MockToastService extends Mock implements ToastService {}

late MockAppNavigator testAppNavigator;
late MockToastService testToastService;

void setUpTestInfrastructure() {
  BaseBloc.isTestEnvironment = true;
  testAppNavigator = MockAppNavigator();
  testToastService = MockToastService();
  BaseBlocCallbacks.configure(
    appNavigator: () => testAppNavigator,
    toastService: () => testToastService,
  );
}
