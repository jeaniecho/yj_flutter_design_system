import 'package:flutter/material.dart';

class YJColors {
  // Primary color
  static const Color primary = Color(0xFF121481);

  // Secondary color
  static const Color secondary = Color(0xFFFFEAE3);

  // Accent colors
  static const Color accent1 = Color(0xFFFFCBCB);
  static const Color accent2 = Color(0xFFFFB1B1);

  // Grey shades
  static const Color grey010 = Color(0xFFEEEEEE); // Lightest
  static const Color grey020 = Color(0xFFD6D6D6);
  static const Color grey030 = Color(0xFFBDBDBD);
  static const Color grey040 = Color(0xFFA4A4A4);
  static const Color grey050 = Color(0xFF8B8B8B);
  static const Color grey060 = Color(0xFF757575); // Base color
  static const Color grey070 = Color(0xFF5E5E5E);
  static const Color grey080 = Color(0xFF474747);
  static const Color grey090 = Color(0xFF303030); // Darkest

  // Red shades
  static const Color red010 = Color(0xFFFFEBEE); // Lightest
  static const Color red020 = Color(0xFFFFCDD2);
  static const Color red030 = Color(0xFFEF9A9A);
  static const Color red040 = Color(0xFFE57373);
  static const Color red050 = Color(0xFFEF5350);
  static const Color red060 = Color(0xFFF44336); // Base color
  static const Color red070 = Color(0xFFE53935);
  static const Color red080 = Color(0xFFD32F2F);
  static const Color red090 = Color(0xFFC62828);
  static const Color red100 = Color(0xFFB71C1C); // Darkest

  // Yellow shades
  static const Color yellow010 = Color(0xFFFFFDE7); // Lightest
  static const Color yellow020 = Color(0xFFFFF9C4);
  static const Color yellow030 = Color(0xFFFFF59D);
  static const Color yellow040 = Color(0xFFFFF176);
  static const Color yellow050 = Color(0xFFFFEE58);
  static const Color yellow060 = Color(0xFFFFEB3B); // Base color
  static const Color yellow070 = Color(0xFFFDD835);
  static const Color yellow080 = Color(0xFFFBC02D);
  static const Color yellow090 = Color(0xFFF9A825);
  static const Color yellow100 = Color(0xFFF57F17); // Darkest

  // Additional colors
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);
  static const clear = Color(0x00FFFFFF);

  static const Color background = white;
  static const Color textPrimary = black;
  static const Color textSecondary = grey060;

  // Color scheme
  static ColorScheme colorScheme = const ColorScheme(
    primary: YJColors.primary,
    secondary: YJColors.secondary,
    background: YJColors.background,
    surface: YJColors.clear,
    error: YJColors.yellow090,
    onPrimary: YJColors.secondary,
    onSecondary: YJColors.primary,
    onBackground: YJColors.textPrimary,
    onSurface: YJColors.textSecondary,
    onError: YJColors.secondary,
    brightness: Brightness.light,
  );
}
