import 'package:flutter/material.dart';
import 'package:stroller_shop/features/catalog/catalog/ui_models/stroller_card_vm.dart';
import 'package:stroller_shop/features/catalog/extensions/stroller_card_vm_extension.dart';
import 'package:stroller_shop/l10n/generated/s.dart';
import 'package:stroller_shop/ui_kit/theme/app_radius.dart';
import 'package:stroller_shop/ui_kit/theme/app_theme.dart';
import 'package:stroller_shop/ui_kit/widgets/add_to_cart_button.dart';
import 'package:stroller_shop/ui_kit/widgets/stroller_image.dart';

class AssistantStrollerCard extends StatelessWidget {
  final StrollerCardVM vm;
  final VoidCallback onPressed;
  final VoidCallback onAddToCartPressed;

  const AssistantStrollerCard({
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

    return SizedBox(
      width: 168,
      child: Material(
        color: colors.surface,
        borderRadius: AppRadius.card,
        clipBehavior: .antiAlias,
        child: InkWell(
          onTap: onPressed,
          child: Padding(
            padding: const .all(8),
            child: Column(
              crossAxisAlignment: .stretch,
              spacing: 8,
              children: [
                ClipRRect(
                  borderRadius: AppRadius.image,
                  child: AspectRatio(
                    aspectRatio: 1.2,
                    child: ColoredBox(
                      color: colors.imagePlaceholder,
                      child: StrollerImage(imageUrl: vm.imageUrl, semanticLabel: name),
                    ),
                  ),
                ),
                Padding(
                  padding: const .symmetric(horizontal: 4),
                  child: Column(
                    crossAxisAlignment: .start,
                    spacing: 2,
                    children: [
                      Text(vm.brand, style: textStyles.caption, maxLines: 1, overflow: .ellipsis),
                      Text(
                        vm.model,
                        style: textStyles.bodyStrong,
                        maxLines: 1,
                        overflow: .ellipsis,
                      ),
                      Text(
                        vm.meta(strings),
                        style: textStyles.caption.copyWith(fontSize: 12),
                        maxLines: 1,
                        overflow: .ellipsis,
                      ),
                      Text(
                        vm.priceLabel(strings),
                        style: textStyles.price,
                        maxLines: 1,
                        overflow: .ellipsis,
                      ),
                    ],
                  ),
                ),
                Row(
                  spacing: 8,
                  children: [
                    Expanded(
                      child: OutlinedButton(
                        onPressed: onPressed,
                        style: OutlinedButton.styleFrom(
                          minimumSize: const Size(0, 36),
                          padding: .zero,
                          foregroundColor: colors.accent,
                          side: BorderSide(color: colors.accentSoftBorder),
                          textStyle: textStyles.captionStrong,
                          shape: const RoundedRectangleBorder(borderRadius: AppRadius.pill),
                        ),
                        child: Text(strings.assistantDetails),
                      ),
                    ),
                    AddToCartButton(
                      semanticLabel: strings.addToCartLabel(name),
                      onPressed: onAddToCartPressed,
                      dimension: 36,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
