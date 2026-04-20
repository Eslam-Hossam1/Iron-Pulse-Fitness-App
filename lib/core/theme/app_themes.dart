import 'package:fitness_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class AppThemes {
  static const String fontFamily = 'Lexend'; 

  // ==============================
  // ☀️ LIGHT THEME
  // ==============================
  static ThemeData get lightTheme {
    return ThemeData(
      brightness: Brightness.light,
      scaffoldBackgroundColor: AppColors.lightScaffoldBackground,
      primaryColor: AppColors.lightPrimary,
      fontFamily: fontFamily,
      colorScheme: const ColorScheme.light(
        primary: AppColors.lightPrimary,
        secondary: AppColors.lightSecondary,
        surface: AppColors.lightScaffoldBackground,
        outline: AppColors.lightOutline,
      ),
      
      // --- Typography ---
      textTheme: const TextTheme(
        titleLarge: TextStyle(color: AppColors.lightMainTextColor, fontSize: 24, fontWeight: FontWeight.bold),
        titleMedium: TextStyle(color: AppColors.lightMainTextColor, fontSize: 18, fontWeight: FontWeight.w600),
        bodyLarge: TextStyle(color: AppColors.lightMainTextColor, fontSize: 16),
        bodyMedium: TextStyle(color: AppColors.lightSecondaryTextColor, fontSize: 14),
      ),

      // --- Buttons ---
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.lightPrimary,
          foregroundColor: Colors.white,
          minimumSize: const Size(double.infinity, 56),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          elevation: 0,
        ),
      ),

      // --- Text Fields (Forms) ---
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppColors.lightFormColor,
        hintStyle: const TextStyle(color: AppColors.lightSecondaryTextColor),
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: AppColors.lightOutline),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Colors.transparent),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: AppColors.lightPrimary, width: 1.5),
        ),
        prefixIconColor: AppColors.lightSecondaryTextColor,
        suffixIconColor: AppColors.lightSecondaryTextColor,
      ),

      // --- Cards ---
      cardTheme: CardThemeData(
        color: AppColors.lightFormColor,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          side: const BorderSide(color: AppColors.lightOutline, width: 0.5),
        ),
      ),
    );
  }

  // ==============================
  // 🌙 DARK THEME
  // ==============================
  static ThemeData get darkTheme {
    return ThemeData(
      brightness: Brightness.dark,
      scaffoldBackgroundColor: AppColors.darkScaffoldBackground,
      primaryColor: AppColors.darkPrimary,
      fontFamily: fontFamily,
      colorScheme: const ColorScheme.dark(
        primary: AppColors.darkPrimary,
        secondary: AppColors.darkSecondary,
        surface: AppColors.darkScaffoldBackground,
        outline: AppColors.darkOutline,
      ),

      // --- Typography ---
      textTheme: const TextTheme(
        titleLarge: TextStyle(color: AppColors.darkMainTextColor, fontSize: 24, fontWeight: FontWeight.bold),
        titleMedium: TextStyle(color: AppColors.darkMainTextColor, fontSize: 18, fontWeight: FontWeight.w600),
        bodyLarge: TextStyle(color: AppColors.darkMainTextColor, fontSize: 16),
        bodyMedium: TextStyle(color: AppColors.darkSecondaryTextColor, fontSize: 14),
      ),

      // --- Buttons ---
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.darkPrimary,
          foregroundColor: AppColors.darkMainTextColor,
          minimumSize: const Size(double.infinity, 56),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          elevation: 0,
        ),
      ),

      // --- Text Fields (Forms) ---
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppColors.darkFormColor,
        hintStyle: const TextStyle(color: AppColors.darkSecondaryTextColor),
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: AppColors.darkOutline),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Colors.transparent),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: AppColors.darkPrimary, width: 1.5),
        ),
        prefixIconColor: AppColors.darkSecondaryTextColor,
        suffixIconColor: AppColors.darkSecondaryTextColor,
      ),

      // --- Cards ---
      cardTheme: CardThemeData(
        color: AppColors.darkFormColor,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          side: const BorderSide(color: AppColors.darkOutline, width: 0.5),
        ),
      ),
    );
  }
}