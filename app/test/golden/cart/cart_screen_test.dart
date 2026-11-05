import 'package:flutter/material.dart';
import 'package:stroller_shop/features/cart/bloc/cart_bloc.dart';
import 'package:stroller_shop/features/cart/cart_screen.dart';

import '../../helpers/golden/golden_setup.dart';
import '../golden_test_data.dart';

void main() {
  GoldenScenario scenario(String name, CartState state) => GoldenScenario(
    name,
    widget: const Scaffold(body: CartScreen()),
    registration: [(getIt) => registerBloc<CartBloc, CartState>(getIt, MockCartBloc(), state)],
  );

  goldenTest(
    'cart_screen',
    scenarios: () => [
      scenario('loading', const .loading(data: goldenEmptyCartVM)),
      scenario('loaded', const .loaded(data: goldenCartVM)),
      scenario('empty', const .loaded(data: goldenEmptyCartVM)),
      scenario('error', const .error(data: goldenEmptyCartVM, exception: goldenException)),
    ],
  );
}
