import 'package:json_annotation/json_annotation.dart';
import 'package:stroller_shop/objects/objects.dart';
import 'package:stroller_shop/services/catalog/obj/stroller_obj.dart';

part 'strollers_page_response_obj.g.dart';

@JsonSerializable(createToJson: false)
class const StrollersPageResponseObj({
  final List<StrollerObj> items = const [],
  final int total = 0,
}) implements Transformable<StrollersPage> {
  factory StrollersPageResponseObj.fromJson(Map<String, Object?> json) =>
      _$StrollersPageResponseObjFromJson(json);

  @override
  StrollersPage transform() =>
      StrollersPage(items: items.map((item) => item.transform()).toList(), total: total);
}
