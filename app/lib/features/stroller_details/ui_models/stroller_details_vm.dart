import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stroller_shop/entities/entities.dart';
import 'package:stroller_shop/features/stroller_details/ui_models/spec_vm.dart';

part 'stroller_details_vm.freezed.dart';

@freezed
abstract class StrollerDetailsVM with _$StrollerDetailsVM {
  const factory StrollerDetailsVM({
    required String brand,
    required String model,
    required StrollerType type,
    required double rating,
    required int priceByn,
    required bool isPriceApproximate,
    required bool isInStock,
    required int stockQuantity,
    required List<String> colors,
    required String selectedColor,
    required List<SpecVM> specs,
    required String description,
    required List<String> features,
    required String imageUrl,
  }) = _StrollerDetailsVM;
}
