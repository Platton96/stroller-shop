import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stroller_shop/core/bloc/app_bloc_provider.dart';
import 'package:stroller_shop/features/assistant/assistant_screen.dart';
import 'package:stroller_shop/features/cart/cart_screen.dart';
import 'package:stroller_shop/features/catalog/catalog/catalog_screen.dart';
import 'package:stroller_shop/features/shop/shop_screen.dart';
import 'package:stroller_shop/features/tabs/app_tab.dart';
import 'package:stroller_shop/features/tabs/bloc/tabs_bloc.dart';
import 'package:stroller_shop/l10n/generated/s.dart';
import 'package:stroller_shop/ui_kit/theme/app_theme.dart';

class TabsScreen extends StatelessWidget {
  const TabsScreen({super.key});

  @override
  Widget build(BuildContext context) =>
      AppBlocProvider<TabsBloc>(lazy: false, child: const _TabsView());
}

class _TabsView extends StatelessWidget {
  const _TabsView();

  @override
  Widget build(BuildContext context) => BlocBuilder<TabsBloc, TabsState>(
    builder: (context, state) => Scaffold(
      body: IndexedStack(
        index: state.data.selectedTab.index,
        children: AppTab.values.map(_TabBody.new).toList(),
      ),
      bottomNavigationBar: _BottomBar(
        selectedTab: state.data.selectedTab,
        cartCount: state.data.cartCount,
      ),
    ),
  );
}

class _TabBody extends StatelessWidget {
  const _TabBody(this.tab);

  final AppTab tab;

  @override
  Widget build(BuildContext context) => switch (tab) {
    .catalog => const CatalogScreen(),
    .cart => const CartScreen(),
    .shop => const ShopScreen(),
    .assistant => const AssistantScreen(),
  };
}

class _BottomBar extends StatelessWidget {
  const _BottomBar({required this.selectedTab, required this.cartCount});

  final AppTab selectedTab;
  final int cartCount;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;

    return DecoratedBox(
      decoration: BoxDecoration(
        color: colors.surface,
        border: Border(top: BorderSide(color: colors.border)),
      ),
      child: NavigationBarTheme(
        data: NavigationBarThemeData(
          backgroundColor: colors.surface,
          indicatorColor: colors.accentSoft,
          labelTextStyle: .resolveWith(
            (states) => context.textStyles.label.copyWith(
              color: states.contains(WidgetState.selected) ? colors.accent : colors.textSecondary,
            ),
          ),
          iconTheme: .resolveWith(
            (states) => IconThemeData(
              color: states.contains(WidgetState.selected) ? colors.accent : colors.textSecondary,
            ),
          ),
        ),
        child: NavigationBar(
          selectedIndex: selectedTab.index,
          onDestinationSelected: (index) => context.read<TabsBloc>().add(
            .tabSelected(tab: AppTab.values[index]),
          ),
          destinations: AppTab.values
              .map(
                (tab) => NavigationDestination(
                  icon: tab == .cart && cartCount > 0
                      ? Badge.count(
                          count: cartCount,
                          backgroundColor: colors.accent,
                          child: Icon(tab.icon),
                        )
                      : Icon(tab.icon),
                  label: tab.title(S.of(context)),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}

extension on AppTab {
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
