import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stroller_shop/core/bloc/app_bloc_provider.dart';
import 'package:stroller_shop/features/assistant/assistant_screen.dart';
import 'package:stroller_shop/features/cart/cart_screen.dart';
import 'package:stroller_shop/features/catalog/catalog/catalog_screen.dart';
import 'package:stroller_shop/features/shop/shop_screen.dart';
import 'package:stroller_shop/features/tabs/app_tab.dart';
import 'package:stroller_shop/features/tabs/bloc/tabs_bloc.dart';
import 'package:stroller_shop/features/tabs/extensions/app_tab_extension.dart';
import 'package:stroller_shop/l10n/generated/s.dart';
import 'package:stroller_shop/ui_kit/theme/app_theme.dart';

class TabsScreen extends StatelessWidget {
  const TabsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBlocProvider<TabsBloc>(
      lazy: false,
      child: BlocBuilder<TabsBloc, TabsState>(
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
      ),
    );
  }
}

class _TabBody extends StatelessWidget {
  final AppTab tab;

  const _TabBody(this.tab);

  @override
  Widget build(BuildContext context) {
    return switch (tab) {
      .catalog => const CatalogScreen(),
      .cart => const CartScreen(),
      .shop => const ShopScreen(),
      .assistant => const AssistantScreen(),
    };
  }
}

class _BottomBar extends StatelessWidget {
  final AppTab selectedTab;
  final int cartCount;

  const _BottomBar({required this.selectedTab, required this.cartCount});

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
