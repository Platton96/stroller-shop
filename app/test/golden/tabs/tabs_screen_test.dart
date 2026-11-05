import 'package:get_it/get_it.dart';
import 'package:stroller_shop/features/assistant/bloc/assistant_bloc.dart';
import 'package:stroller_shop/features/cart/bloc/cart_bloc.dart';
import 'package:stroller_shop/features/catalog/catalog/bloc/catalog_bloc.dart';
import 'package:stroller_shop/features/shop/bloc/shop_bloc.dart';
import 'package:stroller_shop/features/tabs/app_tab.dart';
import 'package:stroller_shop/features/tabs/bloc/tabs_bloc.dart';
import 'package:stroller_shop/features/tabs/tabs_screen.dart';

import '../../helpers/golden/golden_setup.dart';
import '../golden_test_data.dart';

void main() {
  void registerTabs(GetIt getIt) {
    registerBloc<CatalogBloc, CatalogState>(
      getIt,
      MockCatalogBloc(),
      const .loaded(data: goldenCatalogVM),
    );
    registerBloc<AssistantBloc, AssistantState>(
      getIt,
      MockAssistantBloc(),
      const .ready(data: goldenGreetingVM),
    );
    registerBloc<CartBloc, CartState>(getIt, MockCartBloc(), const .loaded(data: goldenCartVM));
    registerBloc<ShopBloc, ShopState>(getIt, MockShopBloc(), const .loaded(data: goldenShopVM));
  }

  GoldenScenario scenario(String name, AppTab tab) => GoldenScenario(
    name,
    widget: const TabsScreen(),
    registration: [
      registerTabs,
      (getIt) => registerBloc<TabsBloc, TabsState>(
        getIt,
        MockTabsBloc(),
        .ready(data: TabsVM(selectedTab: tab, cartCount: 3)),
      ),
    ],
  );

  goldenTest(
    'tabs_screen',
    scenarios: () => AppTab.values.map((tab) => scenario(tab.name, tab)).toList(),
  );
}
