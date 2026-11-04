import 'package:stroller_shop/core/message_bus/message_bus.dart';
import 'package:stroller_shop/objects/objects.dart';

class AskAssistantMessage extends ValueMessage<Stroller> {
  const AskAssistantMessage(super.value);
}
