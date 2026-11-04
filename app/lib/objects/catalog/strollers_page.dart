import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stroller_shop/objects/catalog/stroller.dart';

part 'strollers_page.freezed.dart';

@freezed
abstract class StrollersPage with _$StrollersPage {
  const factory StrollersPage({required List<Stroller> items, required int total}) = _StrollersPage;
}
