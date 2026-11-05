import 'package:flutter/material.dart';
import 'package:stroller_shop/core/bloc/app_bloc_provider.dart';
import 'package:stroller_shop/core/bloc/base_bloc.dart';
import 'package:stroller_shop/features/catalog/extensions/stroller_sort_extension.dart';
import 'package:stroller_shop/features/catalog/sort_sheet/bloc/sort_sheet_bloc.dart';
import 'package:stroller_shop/l10n/generated/s.dart';
import 'package:stroller_shop/ui_kit/theme/app_theme.dart';

class SortSheet extends StatelessWidget {
  final StrollerSort selectedSort;

  const SortSheet({required this.selectedSort, super.key});

  @override
  Widget build(BuildContext context) => AppBlocProvider<SortSheetBloc>(
    param1: selectedSort,
    child: BlocBuilder<SortSheetBloc, SortSheetState>(
      builder: (context, state) => SafeArea(
        child: Column(
          mainAxisSize: .min,
          crossAxisAlignment: .stretch,
          children: [
            Padding(
              padding: const .fromLTRB(20, 0, 20, 8),
              child: Text(S.of(context).sortTitle, style: context.textStyles.title),
            ),
            RadioGroup<StrollerSort>(
              groupValue: state.selectedSort,
              onChanged: (sort) => switch (sort) {
                final StrollerSort sort => context.read<SortSheetBloc>().add(
                  .sortSelected(sort: sort),
                ),
                null => null,
              },
              child: Column(
                children: StrollerSort.values
                    .map(
                      (sort) => RadioListTile<StrollerSort>(
                        value: sort,
                        activeColor: context.colors.accent,
                        title: Text(sort.title(S.of(context)), style: context.textStyles.body),
                      ),
                    )
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
