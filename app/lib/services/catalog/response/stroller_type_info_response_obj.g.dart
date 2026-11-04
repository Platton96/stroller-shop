// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stroller_type_info_response_obj.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StrollerTypeInfoResponseObj _$StrollerTypeInfoResponseObjFromJson(
  Map<String, dynamic> json,
) => StrollerTypeInfoResponseObj(
  type: $enumDecodeNullable(
    _$StrollerTypeObjEnumMap,
    json['type'],
    unknownValue: JsonKey.nullForUndefinedEnumValue,
  ),
  label: json['label'] as String? ?? '',
  count: (json['count'] as num?)?.toInt() ?? 0,
);

const _$StrollerTypeObjEnumMap = {
  StrollerTypeObj.modular2in1: 'modular_2in1',
  StrollerTypeObj.modular3in1: 'modular_3in1',
  StrollerTypeObj.stroll: 'stroll',
  StrollerTypeObj.travel: 'travel',
  StrollerTypeObj.cane: 'cane',
  StrollerTypeObj.twin: 'twin',
  StrollerTypeObj.jogger: 'jogger',
};
