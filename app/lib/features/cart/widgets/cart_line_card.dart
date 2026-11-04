import 'package:flutter/material.dart';
import 'package:stroller_shop/features/cart/models/cart_line_vm.dart';
import 'package:stroller_shop/features/cart/widgets/quantity_stepper.dart';
import 'package:stroller_shop/l10n/generated/s.dart';
import 'package:stroller_shop/ui_kit/theme/app_radius.dart';
import 'package:stroller_shop/ui_kit/theme/app_theme.dart';
import 'package:stroller_shop/ui_kit/widgets/stroller_image.dart';

class CartLineCard extends StatelessWidget {
  const CartLineCard({
    required this.vm,
    required this.onDecreasePressed,
    required this.onIncreasePressed,
    super.key,
  });

  final CartLineVM vm;
  final VoidCallback onDecreasePressed;
  final VoidCallback onIncreasePressed;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final textStyles = context.textStyles;

    return DecoratedBox(
      decoration: BoxDecoration(color: colors.surface, borderRadius: AppRadius.card),
      child: Padding(
        padding: const .all(10),
        child: Row(
          spacing: 12,
          children: [
            SizedBox.square(
              dimension: 92,
              child: ClipRRect(
                borderRadius: AppRadius.image,
                child: ColoredBox(
                  color: colors.imagePlaceholder,
                  child: StrollerImage(imageUrl: vm.imageUrl, semanticLabel: vm.name),
                ),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: .start,
                spacing: 4,
                children: [
                  Text(
                    vm.name,
                    style: textStyles.bodyStrong,
                    maxLines: 2,
                    overflow: .ellipsis,
                  ),
                  Text(vm.colorName, style: textStyles.caption.copyWith(fontSize: 12)),
                  if (vm.isAddedByAssistant) const _AssistantBadge(),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          S.of(context).priceByn(vm.sumByn),
                          style: textStyles.price,
                        ),
                      ),
                      QuantityStepper(
                        name: vm.name,
                        quantity: vm.quantity,
                        onDecreasePressed: onDecreasePressed,
                        onIncreasePressed: onIncreasePressed,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _AssistantBadge extends StatelessWidget {
  const _AssistantBadge();

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;

    return DecoratedBox(
      decoration: BoxDecoration(color: colors.accentSoft, borderRadius: AppRadius.pill),
      child: Padding(
        padding: const .symmetric(horizontal: 8, vertical: 3),
        child: Row(
          mainAxisSize: .min,
          spacing: 4,
          children: [
            Icon(Icons.auto_awesome, size: 12, color: colors.accent),
            Text(
              S.of(context).cartAddedByAssistant,
              style: context.textStyles.label.copyWith(color: colors.accent),
            ),
          ],
        ),
      ),
    );
  }
}
