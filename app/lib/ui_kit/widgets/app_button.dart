import 'package:flutter/material.dart';
import 'package:stroller_shop/ui_kit/theme/app_radius.dart';
import 'package:stroller_shop/ui_kit/theme/app_theme.dart';

enum AppButtonStyle { primary, secondary }

class AppButton extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;
  final AppButtonStyle style;

  const AppButton.primary({required this.label, required this.onPressed, super.key})
    : style = .primary;

  const AppButton.secondary({required this.label, required this.onPressed, super.key})
    : style = .secondary;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final (background, foreground) = switch (style) {
      .primary => (colors.accent, colors.onAccent),
      .secondary => (colors.accentSoft, colors.accent),
    };

    return FilledButton(
      onPressed: onPressed,
      style: FilledButton.styleFrom(
        minimumSize: const Size(0, 52),
        backgroundColor: background,
        foregroundColor: foreground,
        textStyle: context.textStyles.titleSmall,
        shape: const RoundedRectangleBorder(borderRadius: AppRadius.button),
      ),
      child: Text(label),
    );
  }
}
