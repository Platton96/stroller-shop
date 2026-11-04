import 'package:mocktail/mocktail.dart';
import 'package:stroller_shop/core/bloc/base_bloc.dart';
import 'package:stroller_shop/core/message_bus/message_bus.dart';
import 'package:stroller_shop/core/navigation/app_navigator.dart';
import 'package:stroller_shop/core/toast/toast_service.dart';

class MockAppNavigator extends Mock implements AppNavigator {}

class MockToastService extends Mock implements ToastService {}

late MockAppNavigator testAppNavigator;
late MockToastService testToastService;
late MessageBus testMessageBus;

void setUpTestInfrastructure() {
  BaseBloc.isTestEnvironment = true;
  testAppNavigator = MockAppNavigator();
  testToastService = MockToastService();
  testMessageBus = MessageBus();
  BaseBlocCallbacks.configure(
    appNavigator: () => testAppNavigator,
    messageBus: () => testMessageBus,
    toastService: () => testToastService,
  );
}
