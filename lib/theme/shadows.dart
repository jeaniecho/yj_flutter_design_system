import 'package:flutter/material.dart';

class YJShadows {
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
}
