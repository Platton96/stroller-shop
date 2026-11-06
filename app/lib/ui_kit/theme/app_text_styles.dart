import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stroller_shop/ui_kit/theme/app_colors.dart';

@immutable
class AppTextStyles extends ThemeExtension<AppTextStyles> {
  final TextStyle display;
  final TextStyle headline;
  final TextStyle title;
  final TextStyle titleSmall;
  final TextStyle body;
  final TextStyle bodyStrong;
  final TextStyle caption;
  final TextStyle captionStrong;
  final TextStyle label;
  final TextStyle price;
  final TextStyle priceLarge;

  const AppTextStyles({
    required this.display,
    required this.headline,
    required this.title,
    required this.titleSmall,
    required this.body,
    required this.bodyStrong,
    required this.caption,
    required this.captionStrong,
    required this.label,
    required this.price,
    required this.priceLarge,
  });

  factory AppTextStyles.fromColors(AppColors colors) {
    TextStyle style(double size, FontWeight weight, {double? height, double spacing = 0}) =>
        GoogleFonts.manrope(
          fontSize: size,
          fontWeight: weight,
          height: height,
          letterSpacing: spacing,
          color: colors.textPrimary,
        );

    return AppTextStyles(
      display: style(28, .w800, spacing: -0.56),
      headline: style(24, .w800, spacing: -0.3),
      title: style(18, .w700),
      titleSmall: style(16, .w700),
      body: style(15, .w400, height: 1.45),
      bodyStrong: style(15, .w700),
      caption: style(13, .w400).copyWith(color: colors.textSecondary),
      captionStrong: style(13, .w600),
      label: style(11, .w700),
      price: style(16, .w800),
      priceLarge: style(24, .w800),
    );
  }

  @override
  AppTextStyles copyWith() => this;

  @override
  AppTextStyles lerp(AppTextStyles? other, double t) => other ?? this;
}
