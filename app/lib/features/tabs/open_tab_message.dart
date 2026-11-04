import 'package:stroller_shop/core/message_bus/message_bus.dart';
import 'package:stroller_shop/features/tabs/app_tab.dart';

class OpenTabMessage extends ValueMessage<AppTab> {
  const OpenTabMessage(super.value);
}
