// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_action_obj.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChatActionObj _$ChatActionObjFromJson(Map<String, dynamic> json) => ChatActionObj(
  type: $enumDecodeNullable(
    _$ChatActionTypeObjEnumMap,
    json['type'],
    unknownValue: JsonKey.nullForUndefinedEnumValue,
  ),
  strollerId: json['stroller_id'] as String? ?? '',
  color: json['color'] as String? ?? '',
);

const _$ChatActionTypeObjEnumMap = {ChatActionTypeObj.addToCart: 'add_to_cart'};
