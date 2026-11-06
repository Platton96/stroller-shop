import 'package:flutter/material.dart';
import 'package:stroller_shop/ui_kit/theme/app_theme.dart';

class AppIconButton extends StatelessWidget {
  final IconData icon;
  final String semanticLabel;
  final VoidCallback onPressed;
  final int badgeCount;

  const AppIconButton({
    required this.icon,
    required this.semanticLabel,
    required this.onPressed,
    this.badgeCount = 0,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;

    return Semantics(
      button: true,
      label: semanticLabel,
      excludeSemantics: true,
      child: Material(
        color: colors.surface,
        shape: const CircleBorder(),
        child: InkWell(
          customBorder: const CircleBorder(),
          onTap: onPressed,
          child: SizedBox.square(
            dimension: 48,
            child: Center(
              child: Badge.count(
                count: badgeCount,
                isLabelVisible: badgeCount > 0,
                backgroundColor: colors.accent,
                child: Icon(icon, color: colors.textPrimary),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
