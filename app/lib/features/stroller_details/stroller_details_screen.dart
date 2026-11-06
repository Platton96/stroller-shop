import 'package:flutter/material.dart';
import 'package:stroller_shop/core/bloc/app_bloc_provider.dart';
import 'package:stroller_shop/core/bloc/base_bloc.dart';
import 'package:stroller_shop/features/stroller_details/bloc/stroller_details_bloc.dart';
import 'package:stroller_shop/features/stroller_details/ui_models/stroller_details_vm.dart';
import 'package:stroller_shop/features/stroller_details/widgets/color_picker.dart';
import 'package:stroller_shop/features/stroller_details/widgets/spec_grid.dart';
import 'package:stroller_shop/l10n/generated/s.dart';
import 'package:stroller_shop/ui_kit/extensions/stroller_type_extension.dart';
import 'package:stroller_shop/ui_kit/theme/app_radius.dart';
import 'package:stroller_shop/ui_kit/theme/app_theme.dart';
import 'package:stroller_shop/ui_kit/widgets/app_button.dart';
import 'package:stroller_shop/ui_kit/widgets/error_view.dart';
import 'package:stroller_shop/ui_kit/widgets/stroller_image.dart';

class StrollerDetailsScreen extends StatelessWidget {
  final String strollerId;

  const StrollerDetailsScreen({required this.strollerId, super.key});

  @override
  Widget build(BuildContext context) {
    return AppBlocProvider<StrollerDetailsBloc>(
      param1: strollerId,
      postCreate: (bloc) => bloc.add(const .init()),
      child: BlocBuilder<StrollerDetailsBloc, StrollerDetailsState>(
        builder: (context, state) => Scaffold(
          body: switch (state) {
            StrollerDetailsInitialState() || StrollerDetailsLoadingState() => const Stack(
              children: [
                Center(child: CircularProgressIndicator()),
                _BackButton(),
              ],
            ),
            StrollerDetailsErrorState(:final exception) => Stack(
              children: [
                ErrorView(
                  exception: exception,
                  onRetry: () => context.read<StrollerDetailsBloc>().add(const .retryPressed()),
                ),
                const _BackButton(),
              ],
            ),
            StrollerDetailsLoadedState(:final data) => _LoadedContent(vm: data),
          },
          bottomNavigationBar: switch (state) {
            StrollerDetailsLoadedState() => const _BottomBar(),
            _ => null,
          },
        ),
      ),
    );
  }
}

class _LoadedContent extends StatelessWidget {
  final StrollerDetailsVM vm;

  const _LoadedContent({required this.vm});

  @override
  Widget build(BuildContext context) {
    final strings = S.of(context);
    final colors = context.colors;
    final textStyles = context.textStyles;

    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Stack(
            children: [
              ColoredBox(
                color: colors.surface,
                child: SizedBox(
                  height: 340,
                  width: double.infinity,
                  child: Padding(
                    padding: const .fromLTRB(24, 72, 24, 24),
                    child: StrollerImage(
                      imageUrl: vm.imageUrl,
                      semanticLabel: '${vm.brand} ${vm.model}',
                    ),
                  ),
                ),
              ),
              const _BackButton(),
            ],
          ),
        ),
        SliverPadding(
          padding: const .all(20),
          sliver: SliverList.list(
            children: [
              Row(
                spacing: 8,
                children: [
                  Flexible(
                    child: Text(
                      '${vm.brand}${strings.metaSeparator}${vm.type.title(strings)}',
                      style: textStyles.caption,
                    ),
                  ),
                  Icon(Icons.star_rounded, size: 16, color: colors.rating),
                  Text(
                    vm.rating.toStringAsFixed(1).replaceAll('.', ','),
                    style: textStyles.captionStrong,
                  ),
                ],
              ),
              const SizedBox(height: 6),
              Text(vm.model, style: textStyles.display),
              const SizedBox(height: 6),
              Row(
                crossAxisAlignment: .baseline,
                textBaseline: .alphabetic,
                spacing: 10,
                children: [
                  Text(
                    vm.isPriceApproximate
                        ? strings.priceApproxByn(vm.priceByn)
                        : strings.priceByn(vm.priceByn),
                    style: textStyles.priceLarge,
                  ),
                  Text(
                    vm.isInStock
                        ? strings.detailsInStock(vm.stockQuantity)
                        : strings.detailsOutOfStock,
                    style: textStyles.captionStrong.copyWith(
                      color: vm.isInStock ? colors.accent : colors.textSecondary,
                    ),
                  ),
                ],
              ),
              if (vm.colors.isNotEmpty)
                Padding(
                  padding: const .only(top: 18),
                  child: ColorPicker(
                    colors: vm.colors,
                    selectedColor: vm.selectedColor,
                    onSelected: (color) =>
                        context.read<StrollerDetailsBloc>().add(.colorSelected(color: color)),
                  ),
                ),
              const SizedBox(height: 18),
              SpecGrid(specs: vm.specs),
              const SizedBox(height: 18),
              Text(vm.description, style: textStyles.body.copyWith(color: colors.textBody)),
              if (vm.features.isNotEmpty)
                Padding(
                  padding: const .only(top: 18),
                  child: _Features(features: vm.features),
                ),
              const SizedBox(height: 18),
              Text(strings.detailsSource, style: textStyles.caption.copyWith(fontSize: 12)),
            ],
          ),
        ),
      ],
    );
  }
}

class _Features extends StatelessWidget {
  final List<String> features;

  const _Features({required this.features});

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;

    return DecoratedBox(
      decoration: BoxDecoration(color: colors.surface, borderRadius: AppRadius.card),
      child: Padding(
        padding: const .all(16),
        child: Column(
          crossAxisAlignment: .start,
          spacing: 10,
          children: [
            Text(S.of(context).detailsFeatures, style: context.textStyles.titleSmall),
            ...features.map(
              (feature) => Row(
                crossAxisAlignment: .start,
                spacing: 10,
                children: [
                  Icon(Icons.check_rounded, size: 18, color: colors.accent),
                  Expanded(child: Text(feature, style: context.textStyles.body)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _BackButton extends StatelessWidget {
  const _BackButton();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const .all(16),
        child: IconButton.filled(
          tooltip: S.of(context).detailsBack,
          style: IconButton.styleFrom(
            backgroundColor: context.colors.background,
            foregroundColor: context.colors.textPrimary,
            fixedSize: const Size.square(44),
          ),
          onPressed: () => context.read<StrollerDetailsBloc>().add(const .backPressed()),
          icon: const Icon(Icons.chevron_left_rounded),
        ),
      ),
    );
  }
}

class _BottomBar extends StatelessWidget {
  const _BottomBar();

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;

    return DecoratedBox(
      decoration: BoxDecoration(
        color: colors.surface,
        border: Border(top: BorderSide(color: colors.border)),
      ),
      child: SafeArea(
        top: false,
        child: Padding(
          padding: const .fromLTRB(16, 12, 16, 12),
          child: Row(
            spacing: 10,
            children: [
              IconButton.filled(
                tooltip: S.of(context).detailsAskAssistant,
                style: IconButton.styleFrom(
                  backgroundColor: colors.accentSoft,
                  foregroundColor: colors.accent,
                  fixedSize: const Size.square(52),
                  shape: const RoundedRectangleBorder(borderRadius: AppRadius.button),
                ),
                onPressed: () =>
                    context.read<StrollerDetailsBloc>().add(const .askAssistantPressed()),
                icon: const Icon(Icons.auto_awesome_outlined),
              ),
              Expanded(
                child: AppButton.primary(
                  label: S.of(context).detailsAddToCart,
                  onPressed: () =>
                      context.read<StrollerDetailsBloc>().add(const .addToCartPressed()),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
