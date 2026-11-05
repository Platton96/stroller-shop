import 'package:flutter/material.dart';
import 'package:stroller_shop/features/shop/models/shop_delivery_vm.dart';
import 'package:stroller_shop/features/shop/widgets/info_card.dart';
import 'package:stroller_shop/l10n/generated/s.dart';
import 'package:stroller_shop/ui_kit/theme/app_theme.dart';

class DeliveryInfoCard extends StatelessWidget {
  final List<ShopDeliveryVM> options;

  const DeliveryInfoCard({required this.options, super.key});

  @override
  Widget build(BuildContext context) => InfoCard(
    title: S.of(context).shopDeliveryTitle,
    child: Column(
      spacing: 10,
      children: options.map((option) => _DeliveryRow(vm: option)).toList(),
    ),
  );
}

class _DeliveryRow extends StatelessWidget {
  final ShopDeliveryVM vm;

  const _DeliveryRow({required this.vm});

  @override
  Widget build(BuildContext context) {
    final textStyles = context.textStyles;
    final strings = S.of(context);
    final freeFrom = vm.freeFromByn;
    final hint = freeFrom == null
        ? vm.eta
        : '${vm.eta}${strings.metaSeparator}${strings.shopDeliveryFreeFrom(freeFrom)}';
    final price = vm.priceByn == 0 ? strings.shopDeliveryFree : strings.priceByn(vm.priceByn);

    return Row(
      spacing: 12,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: .start,
            children: [
              Text(vm.title, style: textStyles.bodyStrong),
              Text(hint, style: textStyles.caption),
            ],
          ),
        ),
        Text(price, style: textStyles.captionStrong),
      ],
    );
  }
}
