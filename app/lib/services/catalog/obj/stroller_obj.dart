import 'package:json_annotation/json_annotation.dart';
import 'package:stroller_shop/objects/objects.dart';
import 'package:stroller_shop/services/catalog/obj/folded_dimensions_obj.dart';
import 'package:stroller_shop/services/catalog/obj/stroller_season_obj.dart';
import 'package:stroller_shop/services/catalog/obj/stroller_terrain_obj.dart';
import 'package:stroller_shop/services/catalog/obj/stroller_type_obj.dart';

part 'stroller_obj.g.dart';

@JsonSerializable(createToJson: false)
class const StrollerObj({
  required final String id,
  final String brand = '',
  final String model = '',
  @JsonKey(unknownEnumValue: JsonKey.nullForUndefinedEnumValue) final StrollerTypeObj? type,
  final String description = '',
  @JsonKey(name: 'price_byn') final int priceByn = 0,
  @JsonKey(name: 'price_note') final String priceNote = '',
  @JsonKey(name: 'age_from_months') final int ageFromMonths = 0,
  @JsonKey(name: 'age_to_months') final int? ageToMonths,
  @JsonKey(name: 'max_child_weight_kg') final double? maxChildWeightKg,
  @JsonKey(name: 'weight_kg') final double? weightKg,
  @JsonKey(name: 'folded_dimensions_cm') final FoldedDimensionsObj? foldedDimensions,
  @JsonKey(name: 'cabin_luggage') final bool isCabinLuggage = false,
  @JsonKey(name: 'one_hand_fold') final bool isOneHandFold = false,
  final String wheels = '',
  final String suspension = '',
  @JsonKey(name: 'seat_reclines_flat') final bool isSeatReclinesFlat = false,
  @JsonKey(name: 'reversible_seat') final bool isReversibleSeat = false,
  @JsonKey(unknownEnumValue: JsonKey.nullForUndefinedEnumValue) final StrollerSeasonObj? season,
  @JsonKey(unknownEnumValue: JsonKey.nullForUndefinedEnumValue) final StrollerTerrainObj? terrain,
  final List<String> colors = const [],
  final List<String> features = const [],
  @JsonKey(name: 'in_stock') final bool isInStock = false,
  @JsonKey(name: 'stock_qty') final int stockQuantity = 0,
  final double rating = 0,
  @JsonKey(name: 'source_url') final String sourceUrl = '',
  @JsonKey(name: 'image_url') final String imageUrl = '',
}) implements Transformable<Stroller> {
  factory StrollerObj.fromJson(Map<String, Object?> json) => _$StrollerObjFromJson(json);

  @override
  Stroller transform() => Stroller(
    id: id,
    brand: brand,
    model: model,
    type: type.transform(),
    description: description,
    priceByn: priceByn,
    isPriceApproximate: priceNote == 'approx',
    ageFromMonths: ageFromMonths,
    ageToMonths: ageToMonths,
    maxChildWeightKg: maxChildWeightKg,
    weightKg: weightKg,
    foldedDimensions: foldedDimensions?.transform(),
    isCabinLuggage: isCabinLuggage,
    isOneHandFold: isOneHandFold,
    wheels: wheels,
    suspension: suspension,
    isSeatReclinesFlat: isSeatReclinesFlat,
    isReversibleSeat: isReversibleSeat,
    season: season.transform(),
    terrain: terrain.transform(),
    colors: colors,
    features: features,
    isInStock: isInStock,
    stockQuantity: stockQuantity,
    rating: rating,
    sourceUrl: sourceUrl,
    imageUrl: imageUrl,
  );
}

extension StrollerTypeObjTransform on StrollerTypeObj? {
  StrollerType transform() => switch (this) {
    .modular2in1 => .modular2in1,
    .modular3in1 => .modular3in1,
    .stroll => .stroll,
    .travel => .travel,
    .cane => .cane,
    .twin => .twin,
    .jogger => .jogger,
    null => .undefined,
  };
}

extension on StrollerSeasonObj? {
  StrollerSeason transform() => switch (this) {
    .all => .all,
    .summer => .summer,
    .winter => .winter,
    null => .undefined,
  };
}

extension on StrollerTerrainObj? {
  StrollerTerrain transform() => switch (this) {
    .city => .city,
    .mixed => .mixed,
    .allTerrain => .allTerrain,
    null => .undefined,
  };
}
