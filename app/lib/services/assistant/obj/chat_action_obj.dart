import 'package:json_annotation/json_annotation.dart';
import 'package:stroller_shop/entities/entities.dart';
import 'package:stroller_shop/services/assistant/obj/chat_action_type_obj.dart';

part 'chat_action_obj.g.dart';

@JsonSerializable(createToJson: false)
class const ChatActionObj({
  @JsonKey(unknownEnumValue: JsonKey.nullForUndefinedEnumValue) final ChatActionTypeObj? type,
  @JsonKey(name: 'stroller_id') final String strollerId = '',
  final String color = '',
}) implements Transformable<AssistantAction> {
  factory ChatActionObj.fromJson(Map<String, Object?> json) => _$ChatActionObjFromJson(json);

  @override
  AssistantAction transform() => switch (type) {
    .addToCart => .addToCart(strollerId: strollerId, color: color),
    null => const .unknown(),
  };
}
