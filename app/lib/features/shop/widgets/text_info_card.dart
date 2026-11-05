import 'package:flutter/material.dart';
import 'package:stroller_shop/features/shop/widgets/info_card.dart';
import 'package:stroller_shop/ui_kit/theme/app_theme.dart';

class TextInfoCard extends StatelessWidget {
  final String title;
  final String text;

  const TextInfoCard({required this.title, required this.text, super.key});

  @override
  Widget build(BuildContext context) => InfoCard(
    title: title,
    child: Text(text, style: context.textStyles.body),
  );
}
