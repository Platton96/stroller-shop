import 'package:json_annotation/json_annotation.dart';

part 'chat_action_type_obj.g.dart';

@JsonEnum(alwaysCreate: true)
enum ChatActionTypeObj {
  @JsonValue('add_to_cart')
  addToCart;

  String? toJson() => _$ChatActionTypeObjEnumMap[this];
}
