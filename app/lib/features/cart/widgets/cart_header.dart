import 'package:flutter/material.dart';
import 'package:stroller_shop/l10n/generated/s.dart';
import 'package:stroller_shop/ui_kit/theme/app_theme.dart';

class CartHeader extends StatelessWidget {
  const CartHeader({required this.itemsCount, super.key});

  final int itemsCount;

  @override
  Widget build(BuildContext context) {
    final strings = S.of(context);

    return Row(
      crossAxisAlignment: .baseline,
      textBaseline: .alphabetic,
      children: [
        Expanded(child: Text(strings.cartTitle, style: context.textStyles.headline)),
        Text(strings.cartItemsCount(itemsCount), style: context.textStyles.caption),
      ],
    );
  }
}
