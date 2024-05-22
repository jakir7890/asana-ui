import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  fontFamily: 'SFProText',
  primaryColor: const Color(0xFF7c6dfc),
  brightness: Brightness.light,
  cardColor: const Color(0xFF242424),
  hintColor: const Color(0xFF9F9F9F),
  scaffoldBackgroundColor: const Color(0xFFffffff),


  colorScheme: const ColorScheme.light(
      primary: Color(0xFF02B8A2),
      error: Color(0xFFE84D4F),
      secondary: Color(0xFF373737),
      onSecondary: Color(0xFFa0a0a0),
      tertiary: Color(0xFF7CCD8B),
      tertiaryContainer: Color(0xFF373737),
      secondaryContainer: Color(0xFFEE6464),
      onTertiary: Color(0xFFD9D9D9),
      onSecondaryContainer: Color(0xFFA8C5C1),
      onTertiaryContainer: Color(0xFF425956),
      outline: Color(0xFF8CFFF1),
      onPrimaryContainer: Color(0xFF929494),
      primaryContainer: Color(0xFF373737),
      onSurface: Color(0xFFFFE6AD),
      onPrimary: Color(0xFF064A42)


  ),
  textButtonTheme: TextButtonThemeData(style: TextButton.styleFrom(foregroundColor: const Color(0xFF00735f))),
);
