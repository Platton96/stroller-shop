import 'package:flutter/material.dart';
import 'package:stroller_shop/features/catalog/catalog/models/type_chip_vm.dart';
import 'package:stroller_shop/l10n/generated/s.dart';
import 'package:stroller_shop/objects/objects.dart';
import 'package:stroller_shop/ui_kit/theme/app_radius.dart';
import 'package:stroller_shop/ui_kit/theme/app_theme.dart';

class TypeChips extends StatelessWidget {
  const TypeChips({required this.chips, required this.onSelected, super.key});

  final List<TypeChipVM> chips;
  final ValueSetter<StrollerType?> onSelected;

  @override
  Widget build(BuildContext context) => SizedBox(
    height: 40,
    child: ListView.separated(
      scrollDirection: .horizontal,
      padding: const .symmetric(horizontal: 20),
      itemCount: chips.length,
      separatorBuilder: (_, _) => const SizedBox(width: 8),
      itemBuilder: (context, index) {
        final (type, label, count, isSelected) = switch (chips[index]) {
          AllTypesChipVM(:final count, :final isSelected) => (
            null,
            S.of(context).catalogAllTypes,
            count,
            isSelected,
          ),
          SingleTypeChipVM(:final type, :final label, :final count, :final isSelected) => (
            type,
            label,
            count,
            isSelected,
          ),
        };

        return _Chip(
          label: label,
          count: count,
          isSelected: isSelected,
          onPressed: () => onSelected(type),
        );
      },
    ),
  );
}

class _Chip extends StatelessWidget {
  const _Chip({
    required this.label,
    required this.count,
    required this.isSelected,
    required this.onPressed,
  });

  final String label;
  final int count;
  final bool isSelected;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final foreground = isSelected ? colors.onAccent : colors.textPrimary;

    return Semantics(
      selected: isSelected,
      child: Material(
        color: isSelected ? colors.textPrimary : colors.surface,
        shape: RoundedRectangleBorder(
          borderRadius: AppRadius.pill,
          side: BorderSide(color: isSelected ? colors.textPrimary : colors.border),
        ),
        child: InkWell(
          customBorder: const StadiumBorder(),
          onTap: onPressed,
          child: Padding(
            padding: const .symmetric(horizontal: 14),
            child: Center(
              child: Text.rich(
                TextSpan(
                  text: '$label ',
                  style: context.textStyles.captionStrong.copyWith(
                    fontSize: 14,
                    color: foreground,
                  ),
                  children: [
                    TextSpan(
                      text: '$count',
                      style: TextStyle(
                        fontWeight: .w500,
                        color: foreground.withValues(alpha: 0.7),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
