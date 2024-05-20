import 'package:flutter/material.dart';

class YJShadows {
  // Light Mode Shadows
  static const BoxShadow lightShadow = BoxShadow(
    color: Color(0x29000000), // Black with 16% opacity
    offset: Offset(0, 1),
    blurRadius: 3,
  );

  static const BoxShadow lightShadow2 = BoxShadow(
    color: Color(0x29000000), // Black with 16% opacity
    offset: Offset(0, 2),
    blurRadius: 4,
  );

  static const BoxShadow mediumShadow = BoxShadow(
    color: Color(0x3D000000), // Black with 24% opacity
    offset: Offset(0, 4),
    blurRadius: 6,
  );

  static const BoxShadow mediumShadow2 = BoxShadow(
    color: Color(0x3D000000), // Black with 24% opacity
    offset: Offset(0, 6),
    blurRadius: 8,
  );

  static const BoxShadow darkShadow = BoxShadow(
    color: Color(0x52000000), // Black with 32% opacity
    offset: Offset(0, 8),
    blurRadius: 10,
  );

  static const BoxShadow darkShadow2 = BoxShadow(
    color: Color(0x52000000), // Black with 32% opacity
    offset: Offset(0, 10),
    blurRadius: 12,
  );

  static const BoxShadow subtleShadow = BoxShadow(
    color: Color(0x1F000000), // Black with 12% opacity
    offset: Offset(0, 1),
    blurRadius: 2,
  );

  static const BoxShadow intenseShadow = BoxShadow(
    color: Color(0x80000000), // Black with 50% opacity
    offset: Offset(0, 12),
    blurRadius: 16,
  );

  // Dark Mode Shadows
  static const BoxShadow darkModeLightShadow = BoxShadow(
    color: Color(0x1FFFFFFF), // White with 12% opacity
    offset: Offset(0, 1),
    blurRadius: 3,
  );

  static const BoxShadow darkModeLightShadow2 = BoxShadow(
    color: Color(0x1FFFFFFF), // White with 12% opacity
    offset: Offset(0, 2),
    blurRadius: 4,
  );

  static const BoxShadow darkModeMediumShadow = BoxShadow(
    color: Color(0x26FFFFFF), // White with 15% opacity
    offset: Offset(0, 4),
    blurRadius: 6,
  );

  static const BoxShadow darkModeMediumShadow2 = BoxShadow(
    color: Color(0x26FFFFFF), // White with 15% opacity
    offset: Offset(0, 6),
    blurRadius: 8,
  );

  static const BoxShadow darkModeDarkShadow = BoxShadow(
    color: Color(0x33FFFFFF), // White with 20% opacity
    offset: Offset(0, 8),
    blurRadius: 10,
  );

  static const BoxShadow darkModeDarkShadow2 = BoxShadow(
    color: Color(0x33FFFFFF), // White with 20% opacity
    offset: Offset(0, 10),
    blurRadius: 12,
  );

  static const BoxShadow darkModeSubtleShadow = BoxShadow(
    color: Color(0x14FFFFFF), // White with 8% opacity
    offset: Offset(0, 1),
    blurRadius: 2,
  );

  static const BoxShadow darkModeIntenseShadow = BoxShadow(
    color: Color(0x66FFFFFF), // White with 40% opacity
    offset: Offset(0, 12),
    blurRadius: 16,
  );
}
