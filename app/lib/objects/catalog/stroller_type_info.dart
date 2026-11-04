import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stroller_shop/objects/catalog/stroller_type.dart';

part 'stroller_type_info.freezed.dart';

@freezed
abstract class StrollerTypeInfo with _$StrollerTypeInfo {
  const factory StrollerTypeInfo({
    required StrollerType type,
    required String label,
    required int count,
  }) = _StrollerTypeInfo;
}
