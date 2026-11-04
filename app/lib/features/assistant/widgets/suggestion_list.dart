import 'package:flutter/material.dart';
import 'package:stroller_shop/ui_kit/theme/app_radius.dart';
import 'package:stroller_shop/ui_kit/theme/app_theme.dart';

class SuggestionList extends StatelessWidget {
  const SuggestionList({required this.suggestions, required this.onPressed, super.key});

  final List<String> suggestions;
  final ValueChanged<String> onPressed;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;

    return Align(
      alignment: .centerLeft,
      child: Wrap(
        spacing: 8,
        runSpacing: 8,
        children: suggestions
            .map(
              (suggestion) => OutlinedButton(
                onPressed: () => onPressed(suggestion),
                style: OutlinedButton.styleFrom(
                  minimumSize: const Size(0, 36),
                  padding: const .symmetric(horizontal: 14),
                  foregroundColor: colors.accent,
                  side: BorderSide(color: colors.accentSoftBorder),
                  textStyle: context.textStyles.captionStrong,
                  shape: const RoundedRectangleBorder(borderRadius: AppRadius.pill),
                ),
                child: Text(suggestion),
              ),
            )
            .toList(),
      ),
    );
  }
}
