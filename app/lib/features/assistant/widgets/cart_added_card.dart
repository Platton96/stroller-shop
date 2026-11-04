import 'package:flutter/material.dart';
import 'package:stroller_shop/l10n/generated/s.dart';
import 'package:stroller_shop/ui_kit/theme/app_radius.dart';
import 'package:stroller_shop/ui_kit/theme/app_theme.dart';

class CartAddedCard extends StatelessWidget {
  const CartAddedCard({
    required this.name,
    required this.color,
    required this.priceByn,
    required this.isPriceApproximate,
    required this.onOpenCartPressed,
    super.key,
  });

  final String name;
  final String color;
  final int priceByn;
  final bool isPriceApproximate;
  final VoidCallback onOpenCartPressed;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final textStyles = context.textStyles;
    final strings = S.of(context);
    final price = isPriceApproximate
        ? strings.priceApproxByn(priceByn)
        : strings.priceByn(priceByn);

    return DecoratedBox(
      decoration: BoxDecoration(color: colors.accentSoft, borderRadius: AppRadius.bubble),
      child: Padding(
        padding: const .all(14),
        child: Column(
          crossAxisAlignment: .stretch,
          spacing: 12,
          children: [
            Row(
              spacing: 12,
              children: [
                DecoratedBox(
                  decoration: BoxDecoration(color: colors.accent, shape: .circle),
                  child: SizedBox.square(
                    dimension: 28,
                    child: Icon(Icons.check_rounded, size: 18, color: colors.onAccent),
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: .start,
                    spacing: 2,
                    children: [
                      Text(strings.assistantCartAddedTitle, style: textStyles.bodyStrong),
                      Text(
                        strings.assistantCartAddedLine(name, color, price),
                        style: textStyles.caption,
                        maxLines: 2,
                        overflow: .ellipsis,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            FilledButton(
              onPressed: onOpenCartPressed,
              style: FilledButton.styleFrom(
                minimumSize: const Size(0, 44),
                backgroundColor: colors.surface,
                foregroundColor: colors.accent,
                textStyle: textStyles.captionStrong,
                shape: const RoundedRectangleBorder(borderRadius: AppRadius.button),
              ),
              child: Text(strings.assistantOpenCart),
            ),
          ],
        ),
      ),
    );
  }
}
