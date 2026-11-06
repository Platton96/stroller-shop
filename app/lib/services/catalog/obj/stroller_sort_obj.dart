import 'package:json_annotation/json_annotation.dart';

part 'stroller_sort_obj.g.dart';

@JsonEnum(alwaysCreate: true)
enum StrollerSortObj {
  @JsonValue('')
  relevance,
  @JsonValue('price_asc')
  priceAsc,
  @JsonValue('price_desc')
  priceDesc,
  @JsonValue('rating')
  rating,
  @JsonValue('weight')
  weight;

  String? toJson() => _$StrollerSortObjEnumMap[this];
}
