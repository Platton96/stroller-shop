import 'package:flutter/material.dart';
import 'package:stroller_shop/l10n/generated/s.dart';
import 'package:stroller_shop/ui_kit/theme/app_theme.dart';
import 'package:stroller_shop/ui_kit/widgets/app_button.dart';

class CheckoutBar extends StatelessWidget {
  const CheckoutBar({required this.totalByn, required this.onCheckoutPressed, super.key});

  final int totalByn;
  final VoidCallback onCheckoutPressed;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final strings = S.of(context);

    return DecoratedBox(
      decoration: BoxDecoration(
        color: colors.surface,
        border: Border(top: BorderSide(color: colors.border)),
      ),
      child: Padding(
        padding: const .fromLTRB(20, 14, 20, 14),
        child: Column(
          crossAxisAlignment: .stretch,
          spacing: 12,
          children: [
            Row(
              children: [
                Expanded(child: Text(strings.cartTotalLabel, style: context.textStyles.title)),
                Text(
                  strings.priceByn(totalByn),
                  style: context.textStyles.price.copyWith(fontSize: 22),
                ),
              ],
            ),
            AppButton.primary(label: strings.cartCheckout, onPressed: onCheckoutPressed),
          ],
        ),
      ),
    );
  }
}
