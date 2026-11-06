import 'package:flutter/material.dart';
import 'package:stroller_shop/features/shop/bloc/shop_bloc.dart';
import 'package:stroller_shop/features/shop/shop_screen.dart';
import 'package:stroller_shop/features/shop/ui_models/shop_vm.dart';

import '../../helpers/golden/golden_setup.dart';
import '../golden_test_data.dart';

void main() {
  GoldenScenario scenario(String name, ShopState state, {Size size = goldenScreenSize}) =>
      GoldenScenario(
        name,
        widget: const Scaffold(body: ShopScreen()),
        size: size,
        registration: [(getIt) => registerBloc<ShopBloc, ShopState>(getIt, MockShopBloc(), state)],
      );

  goldenTest(
    'shop_screen',
    scenarios: () => [
      scenario('loading', .loading(data: ShopVM.initial())),
      scenario('loaded', const .loaded(data: goldenShopVM), size: const Size(390, 1600)),
      scenario('error', .error(data: ShopVM.initial(), exception: goldenException)),
    ],
  );
}
