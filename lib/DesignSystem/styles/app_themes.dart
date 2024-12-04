import 'package:flutter/material.dart';
import 'app_colors.dart';
import 'app_text_styles.dart';

class AppThemes {
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: AppColors.primaryColor,
    scaffoldBackgroundColor: AppColors.background,
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.primaryColor,
      foregroundColor: AppColors.white,
      titleTextStyle: AppTextStyles.titleLarge,
    ),
    textTheme: TextTheme(
      bodyLarge: AppTextStyles.bodyLarge, // Substituindo bodyText1
      bodyMedium: AppTextStyles.bodyMedium, // Substituindo bodyText2
      titleLarge: AppTextStyles.titleLarge, // Substituindo headline6
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: AppColors.primaryColor,
      textTheme: ButtonTextTheme.primary,
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: AppColors.primaryColor,
    scaffoldBackgroundColor: AppColors.backgroundDark,
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.backgroundDark,
      foregroundColor: AppColors.white,
      titleTextStyle: AppTextStyles.titleLarge,
    ),
    textTheme: TextTheme(
      bodyLarge: AppTextStyles.bodyLarge,
      bodyMedium: AppTextStyles.bodyMedium,
      titleLarge: AppTextStyles.titleLarge,
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: AppColors.primaryColor,
      textTheme: ButtonTextTheme.primary,
    ),
  );
}
