import 'package:flutter/material.dart';
import 'package:stroller_shop/features/catalog/catalog/bloc/catalog_bloc.dart';
import 'package:stroller_shop/features/catalog/catalog/catalog_screen.dart';

import '../../helpers/golden/golden_setup.dart';
import '../golden_test_data.dart';

void main() {
  GoldenScenario scenario(String name, CatalogState state) => GoldenScenario(
    name,
    widget: const Scaffold(body: CatalogScreen()),
    registration: [
      (getIt) => registerBloc<CatalogBloc, CatalogState>(getIt, MockCatalogBloc(), state),
    ],
  );

  goldenTest(
    'catalog_screen',
    scenarios: () => [
      scenario('loading', const .loading(data: goldenCatalogVM)),
      scenario('loaded', const .loaded(data: goldenCatalogVM)),
      scenario('empty', .loaded(data: goldenCatalogVM.copyWith(cards: const [], totalCount: 0))),
      scenario('error', const .error(data: goldenCatalogVM, exception: goldenException)),
    ],
  );
}
