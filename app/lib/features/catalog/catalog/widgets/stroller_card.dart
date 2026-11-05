import 'package:flutter/material.dart';
import 'package:stroller_shop/features/catalog/catalog/models/stroller_card_vm.dart';
import 'package:stroller_shop/features/catalog/extensions/stroller_card_vm_extension.dart';
import 'package:stroller_shop/l10n/generated/s.dart';
import 'package:stroller_shop/ui_kit/theme/app_radius.dart';
import 'package:stroller_shop/ui_kit/theme/app_theme.dart';
import 'package:stroller_shop/ui_kit/widgets/add_to_cart_button.dart';
import 'package:stroller_shop/ui_kit/widgets/stroller_image.dart';

class StrollerCard extends StatelessWidget {
  final StrollerCardVM vm;
  final VoidCallback onPressed;
  final VoidCallback onAddToCartPressed;

  const StrollerCard({
    required this.vm,
    required this.onPressed,
    required this.onAddToCartPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final textStyles = context.textStyles;
    final strings = S.of(context);
    final name = '${vm.brand} ${vm.model}';

    return Material(
      color: colors.surface,
      borderRadius: AppRadius.card,
      clipBehavior: .antiAlias,
      child: InkWell(
        onTap: onPressed,
        child: Padding(
          padding: const .fromLTRB(8, 8, 8, 12),
          child: Column(
            crossAxisAlignment: .stretch,
            spacing: 10,
            children: [
              Expanded(
                child: ClipRRect(
                  borderRadius: AppRadius.image,
                  child: ColoredBox(
                    color: colors.imagePlaceholder,
                    child: Stack(
                      fit: .expand,
                      children: [
                        StrollerImage(imageUrl: vm.imageUrl, semanticLabel: name),
                        if (vm.isCabinLuggage)
                          const Positioned(left: 8, top: 8, child: _CabinLuggageBadge()),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const .symmetric(horizontal: 6),
                child: Column(
                  crossAxisAlignment: .start,
                  spacing: 2,
                  children: [
                    Text(vm.brand, style: textStyles.caption, maxLines: 1),
                    Text(vm.model, style: textStyles.bodyStrong, maxLines: 1, overflow: .ellipsis),
                    Text(
                      vm.meta(strings),
                      style: textStyles.caption.copyWith(fontSize: 12),
                      maxLines: 1,
                      overflow: .ellipsis,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const .only(left: 6),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        vm.priceLabel(strings),
                        style: textStyles.price,
                      ),
                    ),
                    AddToCartButton(
                      semanticLabel: strings.addToCartLabel(name),
                      onPressed: onAddToCartPressed,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _CabinLuggageBadge extends StatelessWidget {
  const _CabinLuggageBadge();

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;

    return DecoratedBox(
      decoration: BoxDecoration(
        color: colors.surface,
        borderRadius: const .all(.circular(8)),
      ),
      child: Padding(
        padding: const .symmetric(horizontal: 8, vertical: 4),
        child: Row(
          mainAxisSize: .min,
          spacing: 4,
          children: [
            Icon(Icons.flight_rounded, size: 12, color: colors.accent),
            Text(
              S.of(context).cabinLuggageBadge,
              style: context.textStyles.label.copyWith(color: colors.accent),
            ),
          ],
        ),
      ),
    );
  }
}
