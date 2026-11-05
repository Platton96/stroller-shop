import 'package:flutter/material.dart';
import 'package:stroller_shop/l10n/generated/s.dart';
import 'package:stroller_shop/ui_kit/theme/app_theme.dart';

class CartSummary extends StatelessWidget {
  final int goodsTotalByn;
  final int shippingByn;

  const CartSummary({required this.goodsTotalByn, required this.shippingByn, super.key});

  @override
  Widget build(BuildContext context) {
    final strings = S.of(context);

    return Column(
      spacing: 8,
      children: [
        _SummaryRow(label: strings.cartGoodsLabel, value: strings.priceByn(goodsTotalByn)),
        _SummaryRow(
          label: strings.cartShippingLabel,
          value: shippingByn == 0 ? strings.cartDeliveryFree : strings.priceByn(shippingByn),
        ),
      ],
    );
  }
}

class _SummaryRow extends StatelessWidget {
  final String label;
  final String value;

  const _SummaryRow({required this.label, required this.value});

  @override
  Widget build(BuildContext context) => Row(
    children: [
      Expanded(child: Text(label, style: context.textStyles.caption)),
      Text(value, style: context.textStyles.bodyStrong),
    ],
  );
}
