import 'package:stroller_shop/l10n/generated/s.dart';
import 'package:stroller_shop/objects/objects.dart';

extension StrollerSortExtension on StrollerSort {
  String title(S strings) => switch (this) {
    .relevance => strings.sortRelevance,
    .priceAsc => strings.sortPriceAsc,
    .priceDesc => strings.sortPriceDesc,
    .rating => strings.sortRating,
    .weight => strings.sortWeight,
  };
}
