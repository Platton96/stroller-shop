import 'package:flutter/material.dart';
import 'package:stroller_shop/ui_kit/theme/app_radius.dart';
import 'package:stroller_shop/ui_kit/theme/app_theme.dart';

class InfoCard extends StatelessWidget {
  final String title;
  final Widget child;

  const InfoCard({required this.title, required this.child, super.key});

  @override
  Widget build(BuildContext context) => DecoratedBox(
    decoration: BoxDecoration(color: context.colors.surface, borderRadius: AppRadius.card),
    child: Padding(
      padding: const .all(16),
      child: Column(
        crossAxisAlignment: .stretch,
        spacing: 10,
        children: [
          Text(title, style: context.textStyles.title),
          child,
        ],
      ),
    ),
  );
}
