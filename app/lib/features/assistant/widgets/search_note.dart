import 'package:flutter/material.dart';
import 'package:stroller_shop/ui_kit/theme/app_radius.dart';
import 'package:stroller_shop/ui_kit/theme/app_theme.dart';

class SearchNote extends StatelessWidget {
  const SearchNote({required this.summary, super.key});

  final String summary;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;

    return Align(
      alignment: .centerLeft,
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: AppRadius.pill,
          border: Border.all(color: colors.placeholderIcon),
        ),
        child: Padding(
          padding: const .symmetric(horizontal: 12, vertical: 6),
          child: Row(
            mainAxisSize: .min,
            spacing: 6,
            children: [
              Icon(Icons.search_rounded, size: 14, color: colors.textSecondary),
              Flexible(
                child: Text(
                  summary,
                  style: context.textStyles.caption.copyWith(fontSize: 12),
                  maxLines: 2,
                  overflow: .ellipsis,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
