import 'package:stroller_shop/entities/entities.dart';
import 'package:stroller_shop/l10n/generated/s.dart';

extension StrollerSortExtension on StrollerSort {
  String title(S strings) => switch (this) {
    .relevance => strings.sortRelevance,
    .priceAsc => strings.sortPriceAsc,
    .priceDesc => strings.sortPriceDesc,
    .rating => strings.sortRating,
    .weight => strings.sortWeight,
  };
}
