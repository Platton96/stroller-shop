import 'package:json_annotation/json_annotation.dart';

part 'stroller_type_obj.g.dart';

@JsonEnum(alwaysCreate: true)
enum StrollerTypeObj {
  @JsonValue('modular_2in1')
  modular2in1,
  @JsonValue('modular_3in1')
  modular3in1,
  @JsonValue('stroll')
  stroll,
  @JsonValue('travel')
  travel,
  @JsonValue('cane')
  cane,
  @JsonValue('twin')
  twin,
  @JsonValue('jogger')
  jogger;

  String? toJson() => _$StrollerTypeObjEnumMap[this];
}
