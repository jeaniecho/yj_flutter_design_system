import 'package:flutter/material.dart';

class YJTypography {
  // Common Text Styles
  static const double _headlineLargeFontSize = 32;
  static const double _headlineMediumFontSize = 24;
  static const double _headlineSmallFontSize = 20;
  static const double _bodyLargeFontSize = 16;
  static const double _bodyMediumFontSize = 14;
  static const double _bodySmallFontSize = 12;

  static TextStyle headlineLarge(BuildContext context) {
    return TextStyle(
      fontSize: _headlineLargeFontSize,
      fontWeight: FontWeight.bold,
      color: Theme.of(context).textTheme.headlineLarge?.color,
    );
  }

  static TextStyle headlineMedium(BuildContext context) {
    return TextStyle(
      fontSize: _headlineMediumFontSize,
      fontWeight: FontWeight.bold,
      color: Theme.of(context).textTheme.headlineMedium?.color,
    );
  }

  static TextStyle headlineSmall(BuildContext context) {
    return TextStyle(
      fontSize: _headlineSmallFontSize,
      fontWeight: FontWeight.bold,
      color: Theme.of(context).textTheme.headlineSmall?.color,
    );
  }

  static TextStyle bodyLarge(BuildContext context) {
    return TextStyle(
      fontSize: _bodyLargeFontSize,
      fontWeight: FontWeight.normal,
      color: Theme.of(context).textTheme.bodyLarge?.color,
    );
  }

  static TextStyle bodyMedium(BuildContext context) {
    return TextStyle(
      fontSize: _bodyMediumFontSize,
      fontWeight: FontWeight.normal,
      color: Theme.of(context).textTheme.bodyMedium?.color,
    );
  }

  static TextStyle bodySmall(BuildContext context) {
    return TextStyle(
      fontSize: _bodySmallFontSize,
      fontWeight: FontWeight.normal,
      color: Theme.of(context).textTheme.bodySmall?.color,
    );
  }
}
