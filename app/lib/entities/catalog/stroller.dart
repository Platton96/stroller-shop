import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stroller_shop/entities/catalog/stroller_season.dart';
import 'package:stroller_shop/entities/catalog/stroller_terrain.dart';
import 'package:stroller_shop/entities/catalog/stroller_type.dart';

part 'stroller.freezed.dart';

@freezed
abstract class Stroller with _$Stroller {
  const factory Stroller({
    required String id,
    required String brand,
    required String model,
    required StrollerType type,
    required String description,
    required int priceByn,
    required bool isPriceApproximate,
    required int ageFromMonths,
    required int? ageToMonths,
    required double? maxChildWeightKg,
    required double? weightKg,
    required FoldedDimensions? foldedDimensions,
    required bool isCabinLuggage,
    required bool isOneHandFold,
    required String wheels,
    required String suspension,
    required bool isSeatReclinesFlat,
    required bool isReversibleSeat,
    required StrollerSeason season,
    required StrollerTerrain terrain,
    required List<String> colors,
    required List<String> features,
    required bool isInStock,
    required int stockQuantity,
    required double rating,
    required String sourceUrl,
    required String imageUrl,
  }) = _Stroller;
}

@freezed
abstract class FoldedDimensions with _$FoldedDimensions {
  const factory FoldedDimensions({
    required double lengthCm,
    required double widthCm,
    required double heightCm,
  }) = _FoldedDimensions;
}
