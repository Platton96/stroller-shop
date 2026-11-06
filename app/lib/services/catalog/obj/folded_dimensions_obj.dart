import 'package:json_annotation/json_annotation.dart';
import 'package:stroller_shop/entities/entities.dart';

part 'folded_dimensions_obj.g.dart';

@JsonSerializable(createToJson: false)
class const FoldedDimensionsObj({
  @JsonKey(name: 'l') final double length = 0,
  @JsonKey(name: 'w') final double width = 0,
  @JsonKey(name: 'h') final double height = 0,
}) implements Transformable<FoldedDimensions> {
  factory FoldedDimensionsObj.fromJson(Map<String, Object?> json) =>
      _$FoldedDimensionsObjFromJson(json);

  @override
  FoldedDimensions transform() =>
      FoldedDimensions(lengthCm: length, widthCm: width, heightCm: height);
}
