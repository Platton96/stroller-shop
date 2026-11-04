import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stroller_shop/ui_kit/theme/app_colors.dart';
import 'package:stroller_shop/ui_kit/theme/app_text_styles.dart';

abstract final class AppTheme {
  static ThemeData light() {
    const colors = AppColors.light;
    final textStyles = AppTextStyles.fromColors(colors);

    return ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: colors.background,
      colorScheme: ColorScheme.fromSeed(
        seedColor: colors.accent,
        primary: colors.accent,
        surface: colors.background,
        error: colors.error,
      ),
      textTheme: GoogleFonts.manropeTextTheme(),
      extensions: [colors, textStyles],
      appBarTheme: AppBarTheme(
        backgroundColor: colors.background,
        surfaceTintColor: Colors.transparent,
        foregroundColor: colors.textPrimary,
        titleTextStyle: textStyles.headline,
        centerTitle: false,
      ),
      bottomSheetTheme: BottomSheetThemeData(backgroundColor: colors.background),
    );
  }
}

extension AppThemeContext on BuildContext {
  AppColors get colors => Theme.of(this).extension<AppColors>() ?? AppColors.light;

  AppTextStyles get textStyles =>
      Theme.of(this).extension<AppTextStyles>() ?? AppTextStyles.fromColors(colors);
}
