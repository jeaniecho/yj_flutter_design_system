import 'package:flutter/material.dart';
import '../theme/colors.dart';
import 'typography.dart';

class YJInputField extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final bool isPassword;
  final TextInputType keyboardType;
  final bool hasBorder;
  final bool hasBackground;
  final bool hasUnderline;
  final ValueChanged<String>? onChanged;

  const YJInputField({
    super.key,
    required this.controller,
    required this.label,
    this.isPassword = false,
    this.keyboardType = TextInputType.text,
    this.hasBorder = true,
    this.hasBackground = false,
    this.hasUnderline = false,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    InputDecoration decoration;

    if (hasBorder) {
      decoration = InputDecoration(
        labelText: label,
        labelStyle: YJTypography.bodyText2,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: const BorderSide(color: YJColors.primary),
        ),
      );
    } else if (hasBackground) {
      decoration = InputDecoration(
        labelText: label,
        labelStyle: YJTypography.bodyText2,
        filled: true,
        fillColor: YJColors.grey020,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: const BorderSide(color: YJColors.primary),
        ),
      );
    } else if (hasUnderline) {
      decoration = InputDecoration(
        labelText: label,
        labelStyle: YJTypography.bodyText2,
        border: const UnderlineInputBorder(
          borderSide: BorderSide(color: YJColors.grey040),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: YJColors.primary),
        ),
      );
    } else {
      decoration = InputDecoration(
        labelText: label,
        labelStyle: YJTypography.bodyText2,
        border: InputBorder.none,
        focusedBorder: InputBorder.none,
      );
    }

    return TextField(
      controller: controller,
      obscureText: isPassword,
      keyboardType: keyboardType,
      decoration: decoration,
      style: YJTypography.bodyText1,
      onChanged: onChanged,
    );
  }
}
