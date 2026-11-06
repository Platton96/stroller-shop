import 'package:json_annotation/json_annotation.dart';
import 'package:stroller_shop/entities/entities.dart';
import 'package:stroller_shop/services/catalog/obj/stroller_obj.dart';
import 'package:stroller_shop/services/catalog/obj/stroller_type_obj.dart';

part 'stroller_type_info_response_obj.g.dart';

@JsonSerializable(createToJson: false)
class const StrollerTypeInfoResponseObj({
  @JsonKey(unknownEnumValue: JsonKey.nullForUndefinedEnumValue) final StrollerTypeObj? type,
  final String label = '',
  final int count = 0,
}) implements Transformable<StrollerTypeInfo> {
  factory StrollerTypeInfoResponseObj.fromJson(Map<String, Object?> json) =>
      _$StrollerTypeInfoResponseObjFromJson(json);

  @override
  StrollerTypeInfo transform() =>
      StrollerTypeInfo(type: type.transform(), label: label, count: count);
}
