import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stroller_shop/entities/entities.dart';

part 'type_chip_vm.freezed.dart';

@freezed
abstract class TypeChipVM with _$TypeChipVM {
  const factory TypeChipVM({
    required StrollerType? type,
    required String label,
    required int count,
    required bool isSelected,
  }) = _TypeChipVM;
}
