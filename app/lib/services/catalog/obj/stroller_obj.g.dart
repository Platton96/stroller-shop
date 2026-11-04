// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stroller_obj.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StrollerObj _$StrollerObjFromJson(Map<String, dynamic> json) => StrollerObj(
  id: json['id'] as String,
  brand: json['brand'] as String? ?? '',
  model: json['model'] as String? ?? '',
  type: $enumDecodeNullable(
    _$StrollerTypeObjEnumMap,
    json['type'],
    unknownValue: JsonKey.nullForUndefinedEnumValue,
  ),
  description: json['description'] as String? ?? '',
  priceByn: (json['price_byn'] as num?)?.toInt() ?? 0,
  priceNote: json['price_note'] as String? ?? '',
  ageFromMonths: (json['age_from_months'] as num?)?.toInt() ?? 0,
  ageToMonths: (json['age_to_months'] as num?)?.toInt(),
  maxChildWeightKg: (json['max_child_weight_kg'] as num?)?.toDouble(),
  weightKg: (json['weight_kg'] as num?)?.toDouble(),
  foldedDimensions: json['folded_dimensions_cm'] == null
      ? null
      : FoldedDimensionsObj.fromJson(
          json['folded_dimensions_cm'] as Map<String, dynamic>,
        ),
  isCabinLuggage: json['cabin_luggage'] as bool? ?? false,
  isOneHandFold: json['one_hand_fold'] as bool? ?? false,
  wheels: json['wheels'] as String? ?? '',
  suspension: json['suspension'] as String? ?? '',
  isSeatReclinesFlat: json['seat_reclines_flat'] as bool? ?? false,
  isReversibleSeat: json['reversible_seat'] as bool? ?? false,
  season: $enumDecodeNullable(
    _$StrollerSeasonObjEnumMap,
    json['season'],
    unknownValue: JsonKey.nullForUndefinedEnumValue,
  ),
  terrain: $enumDecodeNullable(
    _$StrollerTerrainObjEnumMap,
    json['terrain'],
    unknownValue: JsonKey.nullForUndefinedEnumValue,
  ),
  colors:
      (json['colors'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  features:
      (json['features'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  isInStock: json['in_stock'] as bool? ?? false,
  stockQuantity: (json['stock_qty'] as num?)?.toInt() ?? 0,
  rating: (json['rating'] as num?)?.toDouble() ?? 0,
  sourceUrl: json['source_url'] as String? ?? '',
  imageUrl: json['image_url'] as String? ?? '',
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

const _$StrollerSeasonObjEnumMap = {
  StrollerSeasonObj.all: 'all',
  StrollerSeasonObj.summer: 'summer',
  StrollerSeasonObj.winter: 'winter',
};

const _$StrollerTerrainObjEnumMap = {
  StrollerTerrainObj.city: 'city',
  StrollerTerrainObj.mixed: 'mixed',
  StrollerTerrainObj.allTerrain: 'all_terrain',
};
