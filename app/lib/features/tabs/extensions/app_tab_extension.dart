import 'package:flutter/material.dart';
import 'package:stroller_shop/features/tabs/app_tab.dart';
import 'package:stroller_shop/l10n/generated/s.dart';

extension AppTabExtension on AppTab {
  IconData get icon => switch (this) {
    .catalog => Icons.grid_view_rounded,
    .assistant => Icons.auto_awesome_outlined,
    .cart => Icons.shopping_cart_outlined,
    .shop => Icons.storefront_outlined,
  };

  String title(S strings) => switch (this) {
    .catalog => strings.tabCatalog,
    .assistant => strings.tabAssistant,
    .cart => strings.tabCart,
    .shop => strings.tabShop,
  };
}
