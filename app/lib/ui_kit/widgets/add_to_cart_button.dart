import 'package:flutter/material.dart';
import 'package:stroller_shop/ui_kit/theme/app_theme.dart';

class AddToCartButton extends StatelessWidget {
  final String semanticLabel;
  final VoidCallback onPressed;
  final double dimension;

  const AddToCartButton({
    required this.semanticLabel,
    required this.onPressed,
    this.dimension = 40,
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
        color: colors.accentSoft,
        shape: const CircleBorder(),
        child: InkWell(
          customBorder: const CircleBorder(),
          onTap: onPressed,
          child: SizedBox.square(
            dimension: dimension,
            child: Icon(Icons.add_rounded, size: 20, color: colors.accent),
          ),
        ),
      ),
    );
  }
}
