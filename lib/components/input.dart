import 'package:flutter/material.dart';
import '../theme/colors.dart';
import 'typography.dart';

enum YJInputFieldStyle {
  border,
  noBorder,
  background,
  underline,
}

class YJInputField extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final bool isPassword;
  final TextInputType keyboardType;
  final YJInputFieldStyle style;
  final ValueChanged<String>? onChanged;
  final Color? color;

  const YJInputField({
    super.key,
    required this.controller,
    required this.label,
    this.isPassword = false,
    this.keyboardType = TextInputType.text,
    this.style = YJInputFieldStyle.border,
    this.onChanged,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    InputDecoration decoration;

    switch (style) {
      case YJInputFieldStyle.border:
        decoration = InputDecoration(
          labelText: label,
          labelStyle: YJTypography.bodyText2,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: BorderSide(color: color ?? YJColors.primary),
          ),
        );
        break;
      case YJInputFieldStyle.noBorder:
        decoration = InputDecoration(
          labelText: label,
          labelStyle: YJTypography.bodyText2,
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
        );
        break;
      case YJInputFieldStyle.background:
        decoration = InputDecoration(
          labelText: label,
          labelStyle: YJTypography.bodyText2,
          filled: true,
          fillColor: color ?? YJColors.grey020,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: const BorderSide(color: YJColors.primary),
          ),
        );
        break;
      case YJInputFieldStyle.underline:
        decoration = InputDecoration(
          labelText: label,
          labelStyle: YJTypography.bodyText2,
          border: UnderlineInputBorder(
            borderSide: BorderSide(color: color ?? YJColors.grey040),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: color ?? YJColors.primary),
          ),
        );
        break;
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
