import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stroller_shop/objects/catalog/stroller_sort.dart';
import 'package:stroller_shop/objects/catalog/stroller_type.dart';

part 'stroller_filter.freezed.dart';

@freezed
abstract class StrollerFilter with _$StrollerFilter {
  const factory StrollerFilter({
    @Default('') String query,
    @Default({}) Set<StrollerType> types,
    @Default(false) bool isInStockOnly,
    @Default(StrollerSort.relevance) StrollerSort sort,
  }) = _StrollerFilter;
}
