import 'package:flutter/material.dart';

import 'colors.dart';

abstract class AppTheme {
  static ThemeData get light {
    final colorScheme = const ColorScheme.light().copyWith(
      primary: const Color.fromARGB(255, 0, 197, 10),
      onPrimary: colorWhite,
      primaryContainer: colorFog,
      onPrimaryContainer: colorMidNight,
      secondary: colorCinnamon,
      onSecondary: colorWhite,
      secondaryContainer: colorMustard,
      onSecondaryContainer: colorCola,
      tertiary: colorNeutral,
      onTertiary: colorWhite,
      tertiaryContainer: colorScreaminGreen,
      onTertiaryContainer: colorDeepFir,
      inversePrimary: colorGoldTips,
      surface: colorPorcelain,
      onSurface: colorShark,
      error: colorRoofTerracotta,
    );

    const textTheme = TextTheme(
      displayLarge: //Light Large
          TextStyle(fontSize: 16, height: 1.5, fontWeight: FontWeight.w300),
      displayMedium: //Light Medium
          TextStyle(fontSize: 14, height: 1.42, fontWeight: FontWeight.w300),
      displaySmall: //Light Small
          TextStyle(fontSize: 12, height: 1.33, fontWeight: FontWeight.w300),
      headlineLarge:
          TextStyle(fontSize: 32, height: 1.25, fontWeight: FontWeight.w400),
      headlineMedium:
          TextStyle(fontSize: 28, height: 1.28, fontWeight: FontWeight.w400),
      headlineSmall:
          TextStyle(fontSize: 24, height: 1.33, fontWeight: FontWeight.w400),
      titleLarge:
          TextStyle(fontSize: 22, height: 1.27, fontWeight: FontWeight.w400),
      titleMedium:
          TextStyle(fontSize: 16, height: 1.5, fontWeight: FontWeight.w500),
      titleSmall:
          TextStyle(fontSize: 14, height: 1.42, fontWeight: FontWeight.w500),
      bodyLarge:
          TextStyle(fontSize: 16, height: 1.5, fontWeight: FontWeight.w400),
      bodyMedium:
          TextStyle(fontSize: 14, height: 1.42, fontWeight: FontWeight.w400),
      bodySmall:
          TextStyle(fontSize: 12, height: 1.33, fontWeight: FontWeight.w400),
      labelLarge:
          TextStyle(fontSize: 18, height: 1.33, fontWeight: FontWeight.w400),
      labelMedium:
          TextStyle(fontSize: 12, height: 1.33, fontWeight: FontWeight.w500),
      labelSmall:
          TextStyle(fontSize: 11, height: 1.45, fontWeight: FontWeight.w500),
    );

    const buttonTextStyle = TextStyle(
      fontFamily: 'FacultyGlyphic',
      fontSize: 18,
      height: 1.33,
      fontWeight: FontWeight.w400,
    );

    return ThemeData(
        useMaterial3: false,
        fontFamily: 'FacultyGlyphic',

        // Appbar
        appBarTheme: AppBarTheme(
          backgroundColor: colorScheme.surface,
          foregroundColor: colorScheme.onSurface,
          shadowColor: const Color(0x20000000),
          toolbarHeight: 68,
          titleTextStyle:
              buttonTextStyle.copyWith(color: colorScheme.onSurface),
          iconTheme: IconThemeData(color: colorScheme.onSurface),
        ),
        colorScheme: colorScheme,
        textTheme: textTheme,
        textSelectionTheme: TextSelectionThemeData(
            cursorColor: colorScheme.primary,
            selectionHandleColor: colorScheme.primary,
            selectionColor: colorScheme.primaryContainer),

        // Buttons
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: colorScheme.primary,
            foregroundColor: colorScheme.onPrimary,
            disabledForegroundColor: colorScheme.onPrimary,
            disabledBackgroundColor: colorNeutral70,
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
            textStyle: buttonTextStyle,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            foregroundColor: colorScheme.primary,
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
            textStyle: buttonTextStyle,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            side: BorderSide(color: colorScheme.primary),
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: colorScheme.primary,
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
            textStyle: buttonTextStyle,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),

        // Input fields
        inputDecorationTheme: InputDecorationTheme(
          labelStyle: textTheme.displayMedium!.copyWith(color: colorNeutral60),
          floatingLabelStyle:
              textTheme.displayMedium!.copyWith(color: colorNeutral17),
          errorStyle:
              textTheme.displaySmall!.copyWith(color: colorScheme.error),
          isDense: true,
          contentPadding: const EdgeInsets.symmetric(
            vertical: 12,
            horizontal: 8,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: colorNeutral94),
          ),
          // enabledBorder: OutlineInputBorder(
          //   borderRadius: BorderRadius.circular(8),
          //   borderSide: const BorderSide(color: colorNeutral94),
          // ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(width: 1, color: colorNeutral17),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: colorScheme.error),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: colorScheme.error),
          ),
          // disabledBorder: OutlineInputBorder(
          //   borderRadius: BorderRadius.circular(8),
          //   borderSide: const BorderSide(color: colorNeutral94),
          // ),
        ));
  }
}
