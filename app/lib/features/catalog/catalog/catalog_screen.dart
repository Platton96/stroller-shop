import 'package:flutter/material.dart';
import 'package:stroller_shop/core/bloc/app_bloc_provider.dart';
import 'package:stroller_shop/core/bloc/base_bloc.dart';
import 'package:stroller_shop/features/catalog/catalog/bloc/catalog_bloc.dart';
import 'package:stroller_shop/features/catalog/catalog/ui_models/catalog_vm.dart';
import 'package:stroller_shop/features/catalog/catalog/widgets/assistant_promo_card.dart';
import 'package:stroller_shop/features/catalog/catalog/widgets/catalog_header.dart';
import 'package:stroller_shop/features/catalog/catalog/widgets/stroller_card.dart';
import 'package:stroller_shop/features/catalog/catalog/widgets/type_chips.dart';
import 'package:stroller_shop/features/catalog/extensions/stroller_sort_extension.dart';
import 'package:stroller_shop/l10n/generated/s.dart';
import 'package:stroller_shop/ui_kit/theme/app_theme.dart';
import 'package:stroller_shop/ui_kit/widgets/error_view.dart';

class CatalogScreen extends StatelessWidget {
  static const _loadMoreThreshold = 600.0;

  const CatalogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBlocProvider<CatalogBloc>(
      postCreate: (bloc) => bloc.add(const .init()),
      child: BlocBuilder<CatalogBloc, CatalogState>(
        builder: (context, state) => SafeArea(
          bottom: false,
          child: NotificationListener<ScrollNotification>(
            onNotification: (notification) {
              if (notification.metrics.extentAfter < _loadMoreThreshold) {
                context.read<CatalogBloc>().add(const .loadMore());
              }

              return false;
            },
            child: CustomScrollView(
              keyboardDismissBehavior: .onDrag,
              slivers: [
                SliverPadding(
                  padding: const .fromLTRB(20, 16, 20, 18),
                  sliver: SliverToBoxAdapter(
                    child: Column(
                      spacing: 18,
                      children: [
                        CatalogHeader(
                          city: state.data.city,
                          cartCount: state.data.cartCount,
                          onCartPressed: () =>
                              context.read<CatalogBloc>().add(const .cartPressed()),
                          onQueryChanged: (query) =>
                              context.read<CatalogBloc>().add(.queryChanged(query: query)),
                        ),
                        AssistantPromoCard(
                          onPressed: () =>
                              context.read<CatalogBloc>().add(const .assistantPressed()),
                        ),
                      ],
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: TypeChips(
                    chips: state.data.typeChips,
                    onSelected: (type) =>
                        context.read<CatalogBloc>().add(.typeSelected(type: type)),
                  ),
                ),
                SliverPadding(
                  padding: const .fromLTRB(20, 18, 8, 4),
                  sliver: SliverToBoxAdapter(child: _SectionHeader(vm: state.data)),
                ),
                switch (state) {
                  CatalogInitialState() || CatalogLoadingState() => const SliverFillRemaining(
                    hasScrollBody: false,
                    child: Center(child: CircularProgressIndicator()),
                  ),
                  CatalogErrorState(:final exception) => SliverFillRemaining(
                    hasScrollBody: false,
                    child: ErrorView(
                      exception: exception,
                      onRetry: () => context.read<CatalogBloc>().add(const .retryPressed()),
                    ),
                  ),
                  CatalogLoadedState(:final data) when data.cards.isEmpty => SliverFillRemaining(
                    hasScrollBody: false,
                    child: Center(
                      child: Text(S.of(context).catalogEmpty, style: context.textStyles.caption),
                    ),
                  ),
                  CatalogLoadedState(:final data) => _SliverStrollerGrid(vm: data),
                },
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _SectionHeader extends StatelessWidget {
  final CatalogVM vm;

  const _SectionHeader({required this.vm});

  @override
  Widget build(BuildContext context) {
    final strings = S.of(context);

    return Row(
      children: [
        Expanded(
          child: Text(strings.catalogFoundCount(vm.totalCount), style: context.textStyles.title),
        ),
        TextButton.icon(
          onPressed: () => context.read<CatalogBloc>().add(const .sortPressed()),
          icon: Icon(Icons.swap_vert_rounded, size: 18, color: context.colors.textSecondary),
          label: Text(vm.sort.title(strings), style: context.textStyles.caption),
        ),
      ],
    );
  }
}

class _SliverStrollerGrid extends StatelessWidget {
  final CatalogVM vm;

  const _SliverStrollerGrid({required this.vm});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const .fromLTRB(20, 8, 20, 24),
      sliver: SliverMainAxisGroup(
        slivers: [
          SliverGrid.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 12,
              crossAxisSpacing: 12,
              mainAxisExtent: 290,
            ),
            itemCount: vm.cards.length,
            itemBuilder: (context, index) {
              final card = vm.cards[index];

              return StrollerCard(
                vm: card,
                onPressed: () =>
                    context.read<CatalogBloc>().add(.strollerPressed(strollerId: card.id)),
                onAddToCartPressed: () =>
                    context.read<CatalogBloc>().add(.addToCartPressed(strollerId: card.id)),
              );
            },
          ),
          if (vm.hasMore)
            const SliverToBoxAdapter(
              child: Padding(
                padding: .all(16),
                child: Center(child: CircularProgressIndicator()),
              ),
            ),
        ],
      ),
    );
  }
}
