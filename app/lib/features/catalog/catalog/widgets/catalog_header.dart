import 'package:flutter/material.dart';
import 'package:stroller_shop/l10n/generated/s.dart';
import 'package:stroller_shop/ui_kit/theme/app_radius.dart';
import 'package:stroller_shop/ui_kit/theme/app_theme.dart';
import 'package:stroller_shop/ui_kit/widgets/app_icon_button.dart';

class CatalogHeader extends StatelessWidget {
  final String city;
  final int cartCount;
  final VoidCallback onCartPressed;
  final ValueChanged<String> onQueryChanged;

  const CatalogHeader({
    required this.city,
    required this.cartCount,
    required this.onCartPressed,
    required this.onQueryChanged,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final strings = S.of(context);
    final colors = context.colors;

    return Column(
      crossAxisAlignment: .stretch,
      spacing: 18,
      children: [
        Row(
          spacing: 12,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: .start,
                spacing: 2,
                children: [
                  Text(strings.appTitle, style: context.textStyles.headline.copyWith(fontSize: 26)),
                  if (city.isNotEmpty)
                    Text(strings.catalogCity(city), style: context.textStyles.caption),
                ],
              ),
            ),
            AppIconButton(
              icon: Icons.shopping_cart_outlined,
              semanticLabel: strings.cartButtonLabel(cartCount),
              badgeCount: cartCount,
              onPressed: onCartPressed,
            ),
          ],
        ),
        TextField(
          onChanged: onQueryChanged,
          textInputAction: .search,
          style: context.textStyles.body,
          decoration: InputDecoration(
            hintText: strings.catalogSearchHint,
            hintStyle: context.textStyles.body.copyWith(color: colors.textSecondary),
            prefixIcon: Icon(Icons.search_rounded, color: colors.textSecondary),
            filled: true,
            fillColor: colors.surface,
            contentPadding: const .symmetric(vertical: 14),
            enabledBorder: OutlineInputBorder(
              borderRadius: AppRadius.field,
              borderSide: BorderSide(color: colors.border),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: AppRadius.field,
              borderSide: BorderSide(color: colors.accent),
            ),
          ),
        ),
      ],
    );
  }
}
