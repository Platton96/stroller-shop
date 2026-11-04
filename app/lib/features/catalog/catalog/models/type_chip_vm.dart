import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stroller_shop/objects/objects.dart';

part 'type_chip_vm.freezed.dart';

@freezed
sealed class TypeChipVM with _$TypeChipVM {
  const factory TypeChipVM.all({required int count, required bool isSelected}) = AllTypesChipVM;

  const factory TypeChipVM.type({
    required StrollerType type,
    required String label,
    required int count,
    required bool isSelected,
  }) = SingleTypeChipVM;
}
