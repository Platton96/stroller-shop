import 'package:flutter/material.dart';
import 'package:stroller_shop/l10n/generated/s.dart';
import 'package:stroller_shop/ui_kit/theme/app_radius.dart';
import 'package:stroller_shop/ui_kit/theme/app_theme.dart';

class AssistantPromoCard extends StatelessWidget {
  const AssistantPromoCard({required this.onPressed, super.key});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final strings = S.of(context);

    return Material(
      color: colors.accent,
      borderRadius: AppRadius.card,
      clipBehavior: .antiAlias,
      child: InkWell(
        onTap: onPressed,
        child: Padding(
          padding: const .all(16),
          child: Row(
            spacing: 14,
            children: [
              DecoratedBox(
                decoration: BoxDecoration(color: colors.highlight, shape: .circle),
                child: SizedBox.square(
                  dimension: 48,
                  child: Icon(Icons.auto_awesome_outlined, color: colors.accent),
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: .start,
                  spacing: 3,
                  children: [
                    Text(
                      strings.catalogAssistantTitle,
                      style: context.textStyles.titleSmall.copyWith(color: colors.onAccent),
                    ),
                    Text(
                      strings.catalogAssistantSubtitle,
                      style: context.textStyles.caption.copyWith(
                        color: colors.onAccentMuted,
                        height: 1.4,
                      ),
                    ),
                  ],
                ),
              ),
              Icon(Icons.chevron_right_rounded, color: colors.onAccent),
            ],
          ),
        ),
      ),
    );
  }
}
