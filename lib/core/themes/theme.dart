import 'package:flutter/material.dart';
import 'color_scheme.dart';
import 'typography.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.backgroundLight,
    cardColor: AppColors.surfaceLight,
    textTheme: TextTheme(
      titleLarge:
          AppTypography.headlineLarge.copyWith(color: AppColors.textLight),
      titleMedium:
          AppTypography.headlineMedium.copyWith(color: AppColors.textLight),
      titleSmall:
          AppTypography.headlineSmall.copyWith(color: AppColors.textLight),
      bodyLarge: AppTypography.bodyLarge.copyWith(color: AppColors.textLight),
      bodyMedium: AppTypography.bodyMedium.copyWith(color: AppColors.textLight),
      bodySmall: AppTypography.bodySmall.copyWith(color: AppColors.textLight),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.primary,
      titleTextStyle: AppTypography.headlineSmall.copyWith(
        color: AppColors.textDark,
      ),
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: AppColors.primary,
      textTheme: ButtonTextTheme.primary,
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.backgroundDark,
    cardColor: AppColors.surfaceDark,
    textTheme: TextTheme(
      titleLarge:
          AppTypography.headlineLarge.copyWith(color: AppColors.textDark),
      titleMedium:
          AppTypography.headlineMedium.copyWith(color: AppColors.textDark),
      titleSmall:
          AppTypography.headlineSmall.copyWith(color: AppColors.textDark),
      bodyLarge: AppTypography.bodyLarge.copyWith(color: AppColors.textDark),
      bodyMedium: AppTypography.bodyMedium.copyWith(color: AppColors.textDark),
      bodySmall: AppTypography.bodySmall.copyWith(color: AppColors.textDark),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.secondary,
      titleTextStyle: AppTypography.headlineSmall.copyWith(
        color: AppColors.textLight,
      ),
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: AppColors.primary,
      textTheme: ButtonTextTheme.primary,
    ),
  );
}
