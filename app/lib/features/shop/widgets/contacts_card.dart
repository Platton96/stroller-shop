import 'package:flutter/material.dart';
import 'package:stroller_shop/features/shop/models/shop_vm.dart';
import 'package:stroller_shop/ui_kit/theme/app_radius.dart';
import 'package:stroller_shop/ui_kit/theme/app_theme.dart';

class ContactsCard extends StatelessWidget {
  final ShopVM vm;

  const ContactsCard({required this.vm, super.key});

  @override
  Widget build(BuildContext context) => DecoratedBox(
    decoration: BoxDecoration(color: context.colors.surface, borderRadius: AppRadius.card),
    child: Padding(
      padding: const .all(16),
      child: Column(
        spacing: 12,
        children: [
          _ContactRow(icon: Icons.place_outlined, text: vm.address),
          _ContactRow(icon: Icons.phone_outlined, text: vm.phone),
          _ContactRow(icon: Icons.schedule_outlined, text: vm.workingHours),
        ],
      ),
    ),
  );
}

class _ContactRow extends StatelessWidget {
  final IconData icon;
  final String text;

  const _ContactRow({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) => Row(
    spacing: 12,
    children: [
      Icon(icon, size: 20, color: context.colors.accent),
      Expanded(child: Text(text, style: context.textStyles.body)),
    ],
  );
}
