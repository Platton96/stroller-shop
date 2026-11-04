import 'package:flutter/material.dart';
import 'package:stroller_shop/features/shop/widgets/info_card.dart';
import 'package:stroller_shop/l10n/generated/s.dart';
import 'package:stroller_shop/ui_kit/theme/app_theme.dart';

class PaymentCard extends StatelessWidget {
  const PaymentCard({required this.methods, super.key});

  final List<String> methods;

  @override
  Widget build(BuildContext context) => InfoCard(
    title: S.of(context).shopPaymentTitle,
    child: Column(
      spacing: 8,
      children: methods
          .map(
            (method) => Row(
              spacing: 10,
              children: [
                Icon(Icons.check_rounded, size: 18, color: context.colors.accent),
                Expanded(child: Text(method, style: context.textStyles.body)),
              ],
            ),
          )
          .toList(),
    ),
  );
}
