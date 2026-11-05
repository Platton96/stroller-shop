import 'package:flutter/material.dart';
import 'package:stroller_shop/core/navigation/app_bottom_sheet.dart';
import 'package:stroller_shop/features/catalog/sort_sheet/bloc/sort_sheet_bloc.dart';
import 'package:stroller_shop/features/catalog/sort_sheet/sort_sheet.dart';

import '../../helpers/golden/golden_setup.dart';
import '../golden_test_data.dart';

void main() {
  goldenTest(
    'sort_sheet',
    scenarios: () => [
      GoldenScenario(
        'opened',
        widget: const _SheetHost(),
        registration: [
          (getIt) => registerBloc<SortSheetBloc, SortSheetState>(
            getIt,
            MockSortSheetBloc(),
            const .initial(selectedSort: goldenSelectedSort),
          ),
        ],
      ),
    ],
  );
}

class _SheetHost extends StatefulWidget {
  const _SheetHost();

  @override
  State<_SheetHost> createState() => _SheetHostState();
}

class _SheetHostState extends State<_SheetHost> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => showAppBottomSheet<void>(
        context,
        (_) => const SortSheet(selectedSort: goldenSelectedSort),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
