import 'package:freezed_annotation/freezed_annotation.dart';

part 'stroller_card_vm.freezed.dart';

@freezed
abstract class StrollerCardVM with _$StrollerCardVM {
  const factory StrollerCardVM({
    required String id,
    required String brand,
    required String model,
    required int priceByn,
    required bool isPriceApproximate,
    required double? weightKg,
    required int ageFromMonths,
    required bool isCabinLuggage,
    required String imageUrl,
  }) = _StrollerCardVM;
}
