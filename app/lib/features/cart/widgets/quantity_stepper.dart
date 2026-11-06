import 'package:flutter/material.dart';
import 'package:stroller_shop/l10n/generated/s.dart';
import 'package:stroller_shop/ui_kit/theme/app_theme.dart';

class QuantityStepper extends StatelessWidget {
  final String name;
  final int quantity;
  final VoidCallback onDecreasePressed;
  final VoidCallback onIncreasePressed;

  const QuantityStepper({
    required this.name,
    required this.quantity,
    required this.onDecreasePressed,
    required this.onIncreasePressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final strings = S.of(context);

    return DecoratedBox(
      decoration: BoxDecoration(
        color: context.colors.background,
        borderRadius: const .all(.circular(12)),
      ),
      child: Row(
        mainAxisSize: .min,
        children: [
          _StepButton(
            icon: Icons.remove_rounded,
            semanticLabel: strings.cartDecreaseLabel(name),
            onPressed: onDecreasePressed,
          ),
          SizedBox(
            width: 24,
            child: Text(
              '$quantity',
              style: context.textStyles.bodyStrong,
              textAlign: .center,
            ),
          ),
          _StepButton(
            icon: Icons.add_rounded,
            semanticLabel: strings.cartIncreaseLabel(name),
            onPressed: onIncreasePressed,
          ),
        ],
      ),
    );
  }
}

class _StepButton extends StatelessWidget {
  final IconData icon;
  final String semanticLabel;
  final VoidCallback onPressed;

  const _StepButton({required this.icon, required this.semanticLabel, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Semantics(
      button: true,
      label: semanticLabel,
      excludeSemantics: true,
      child: InkWell(
        onTap: onPressed,
        borderRadius: const .all(.circular(12)),
        child: SizedBox(
          width: 36,
          height: 36,
          child: Icon(icon, size: 18, color: context.colors.textPrimary),
        ),
      ),
    );
  }
}
