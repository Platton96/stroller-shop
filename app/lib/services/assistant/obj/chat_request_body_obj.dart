import 'package:json_annotation/json_annotation.dart';

part 'chat_request_body_obj.g.dart';

@JsonSerializable(createFactory: false, explicitToJson: true)
class const ChatRequestBodyObj({
  @JsonKey(name: 'conversation_id') required final String conversationId,
  required final String message,
  required final List<ChatCartLineObj> cart,
}) {
  Map<String, Object?> toJson() => _$ChatRequestBodyObjToJson(this);
}

@JsonSerializable(createFactory: false)
class const ChatCartLineObj({
  @JsonKey(name: 'stroller_id') required final String strollerId,
  required final String color,
  required final int quantity,
}) {
  Map<String, Object?> toJson() => _$ChatCartLineObjToJson(this);
}
