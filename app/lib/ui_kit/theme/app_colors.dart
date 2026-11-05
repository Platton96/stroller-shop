import 'package:flutter/material.dart';

@immutable
class AppColors extends ThemeExtension<AppColors> {
  static const light = AppColors(
    background: Color(0xFFF6F2EC),
    surface: Color(0xFFFFFFFF),
    imagePlaceholder: Color(0xFFF1ECE5),
    textPrimary: Color(0xFF1E2422),
    textSecondary: Color(0xFF5F6660),
    textBody: Color(0xFF3B423F),
    border: Color(0xFFE6DFD5),
    accent: Color(0xFF23574F),
    accentPressed: Color(0xFF163A35),
    accentSoft: Color(0xFFE3EDE9),
    accentSoftBorder: Color(0xFFC9DAD4),
    onAccent: Color(0xFFFFFFFF),
    onAccentMuted: Color(0xFFD6E6E1),
    highlight: Color(0xFFF3C9A8),
    rating: Color(0xFFE39A5F),
    placeholderIcon: Color(0xFFC4B8A8),
    indicatorInactive: Color(0xFFD4CBBF),
    error: Color(0xFFB3261E),
  );

  final Color background;
  final Color surface;
  final Color imagePlaceholder;
  final Color textPrimary;
  final Color textSecondary;
  final Color textBody;
  final Color border;
  final Color accent;
  final Color accentPressed;
  final Color accentSoft;
  final Color accentSoftBorder;
  final Color onAccent;
  final Color onAccentMuted;
  final Color highlight;
  final Color rating;
  final Color placeholderIcon;
  final Color indicatorInactive;
  final Color error;

  const AppColors({
    required this.background,
    required this.surface,
    required this.imagePlaceholder,
    required this.textPrimary,
    required this.textSecondary,
    required this.textBody,
    required this.border,
    required this.accent,
    required this.accentPressed,
    required this.accentSoft,
    required this.accentSoftBorder,
    required this.onAccent,
    required this.onAccentMuted,
    required this.highlight,
    required this.rating,
    required this.placeholderIcon,
    required this.indicatorInactive,
    required this.error,
  });

  @override
  AppColors copyWith() => this;

  @override
  AppColors lerp(AppColors? other, double t) => other ?? this;
}
