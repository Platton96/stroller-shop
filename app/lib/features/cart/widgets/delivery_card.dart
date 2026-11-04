import 'package:flutter/material.dart';
import 'package:stroller_shop/features/cart/models/delivery_option_vm.dart';
import 'package:stroller_shop/l10n/generated/s.dart';
import 'package:stroller_shop/ui_kit/theme/app_radius.dart';
import 'package:stroller_shop/ui_kit/theme/app_theme.dart';

class DeliveryCard extends StatelessWidget {
  const DeliveryCard({required this.options, required this.onSelected, super.key});

  final List<DeliveryOptionVM> options;
  final ValueChanged<String> onSelected;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;

    return DecoratedBox(
      decoration: BoxDecoration(color: colors.surface, borderRadius: AppRadius.card),
      child: Padding(
        padding: const .all(16),
        child: Column(
          crossAxisAlignment: .stretch,
          spacing: 8,
          children: [
            Text(S.of(context).cartDeliveryTitle, style: context.textStyles.title),
            ...options.map(
              (option) => _DeliveryOptionTile(
                vm: option,
                onPressed: () => onSelected(option.method),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _DeliveryOptionTile extends StatelessWidget {
  const _DeliveryOptionTile({required this.vm, required this.onPressed});

  final DeliveryOptionVM vm;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final textStyles = context.textStyles;
    final strings = S.of(context);
    final freeFrom = vm.freeFromByn;
    final hint = freeFrom == null ? vm.eta : strings.cartDeliveryFreeFrom(freeFrom);
    final price = vm.costByn == 0 ? strings.cartDeliveryFree : strings.priceByn(vm.costByn);

    return Semantics(
      inMutuallyExclusiveGroup: true,
      checked: vm.isSelected,
      child: InkWell(
        onTap: onPressed,
        borderRadius: AppRadius.field,
        child: Padding(
          padding: const .symmetric(vertical: 6),
          child: Row(
            spacing: 12,
            children: [
              Icon(
                vm.isSelected ? Icons.radio_button_checked : Icons.radio_button_unchecked,
                color: vm.isSelected ? colors.accent : colors.indicatorInactive,
              ),
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
          ),
        ),
      ),
    );
  }
}
