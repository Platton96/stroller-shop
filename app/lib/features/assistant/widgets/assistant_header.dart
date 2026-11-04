import 'package:flutter/material.dart';
import 'package:stroller_shop/l10n/generated/s.dart';
import 'package:stroller_shop/ui_kit/theme/app_theme.dart';
import 'package:stroller_shop/ui_kit/widgets/app_icon_button.dart';

class AssistantHeader extends StatelessWidget {
  const AssistantHeader({required this.cartCount, required this.onCartPressed, super.key});

  final int cartCount;
  final VoidCallback onCartPressed;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final textStyles = context.textStyles;
    final strings = S.of(context);

    return DecoratedBox(
      decoration: BoxDecoration(
        color: colors.surface,
        border: Border(bottom: BorderSide(color: colors.border)),
      ),
      child: SafeArea(
        bottom: false,
        child: Padding(
          padding: const .fromLTRB(16, 10, 12, 10),
          child: Row(
            spacing: 12,
            children: [
              DecoratedBox(
                decoration: BoxDecoration(color: colors.accent, shape: .circle),
                child: SizedBox.square(
                  dimension: 40,
                  child: Icon(Icons.auto_awesome, size: 20, color: colors.highlight),
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: .start,
                  children: [
                    Text(strings.assistantTitle, style: textStyles.titleSmall),
                    Text(
                      strings.assistantSubtitle,
                      style: textStyles.caption,
                      maxLines: 1,
                      overflow: .ellipsis,
                    ),
                  ],
                ),
              ),
              AppIconButton(
                icon: Icons.shopping_cart_outlined,
                semanticLabel: strings.cartButtonLabel(cartCount),
                badgeCount: cartCount,
                onPressed: onCartPressed,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
