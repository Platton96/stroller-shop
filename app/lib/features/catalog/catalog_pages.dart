import 'package:flutter/foundation.dart';
import 'package:stroller_shop/core/navigation/pages.dart';
import 'package:stroller_shop/features/catalog/sort_sheet/sort_sheet.dart';
import 'package:stroller_shop/objects/objects.dart';

class SortSheetPage extends ModalBottomSheetPage<StrollerSort?> {
  SortSheetPage({required StrollerSort selectedSort})
    : super((_) => SortSheet(selectedSort: selectedSort), key: const ValueKey('SortSheetPage'));
}
