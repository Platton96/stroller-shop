import 'package:flutter/material.dart';
import 'package:stroller_shop/l10n/generated/s.dart';
import 'package:stroller_shop/ui_kit/theme/app_radius.dart';
import 'package:stroller_shop/ui_kit/theme/app_theme.dart';

class ColorPicker extends StatelessWidget {
  final List<String> colors;
  final String selectedColor;
  final ValueChanged<String> onSelected;

  const ColorPicker({
    required this.colors,
    required this.selectedColor,
    required this.onSelected,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .start,
      spacing: 10,
      children: [
        Text(
          S.of(context).detailsColor(selectedColor),
          style: context.textStyles.captionStrong.copyWith(fontSize: 14),
        ),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: colors
              .map(
                (color) => _ColorChip(
                  label: color,
                  isSelected: color == selectedColor,
                  onPressed: () => onSelected(color),
                ),
              )
              .toList(),
        ),
      ],
    );
  }
}

class _ColorChip extends StatelessWidget {
  final String label;
  final bool isSelected;
  final VoidCallback onPressed;

  const _ColorChip({required this.label, required this.isSelected, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;

    return Semantics(
      selected: isSelected,
      child: Material(
        color: colors.surface,
        shape: RoundedRectangleBorder(
          borderRadius: AppRadius.pill,
          side: BorderSide(
            color: isSelected ? colors.textPrimary : colors.border,
            width: isSelected ? 2 : 1,
          ),
        ),
        child: InkWell(
          customBorder: const StadiumBorder(),
          onTap: onPressed,
          child: Padding(
            padding: const .symmetric(horizontal: 14, vertical: 10),
            child: Text(label, style: context.textStyles.captionStrong),
          ),
        ),
      ),
    );
  }
}
