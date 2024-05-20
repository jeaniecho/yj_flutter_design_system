import 'package:flutter/material.dart';
import '../theme/colors.dart';
import '../theme/shadows.dart';

class YJButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget child;
  final Color? color;
  final Color? textColor;
  final double borderRadius;
  final EdgeInsetsGeometry padding;
  final bool isDisabled;
  final bool isOutline;

  const YJButton({
    super.key,
    required this.onPressed,
    required this.child,
    this.color,
    this.textColor,
    this.borderRadius = 8.0,
    this.padding = const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
    this.isDisabled = false,
    this.isOutline = false,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: isDisabled ? null : onPressed,
      style: ButtonStyle(
        backgroundColor: isOutline
            ? MaterialStateProperty.all<Color>(Colors.transparent)
            : MaterialStateProperty.resolveWith<Color>(
                (Set<MaterialState> states) {
                if (states.contains(MaterialState.disabled)) {
                  return (color ?? Theme.of(context).primaryColor)
                      .withOpacity(0.5);
                }
                return color ?? Theme.of(context).primaryColor;
              }),
        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(padding),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
            side: isOutline
                ? const BorderSide(
                    color: YJColors.textPrimary,
                    width: 2.0,
                  )
                : BorderSide.none,
          ),
        ),
        textStyle: MaterialStateProperty.all<TextStyle>(
          TextStyle(color: textColor ?? Colors.white),
        ),
        shadowColor: MaterialStateProperty.all<Color>(
          YJShadows.lightShadow.color,
        ),
        elevation: MaterialStateProperty.all<double>(isOutline ? 0 : 2),
      ),
      child: DefaultTextStyle(
        style: TextStyle(color: textColor ?? Colors.white),
        child: child,
      ),
    );
  }
}

class YJPrimaryButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget child;
  final bool isDisabled;

  const YJPrimaryButton({
    super.key,
    required this.onPressed,
    required this.child,
    this.isDisabled = false,
  });

  @override
  Widget build(BuildContext context) {
    return YJButton(
      onPressed: onPressed,
      color: YJColors.primary,
      textColor: YJColors.secondary,
      isDisabled: isDisabled,
      child: child,
    );
  }
}

class YJSecondaryButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget child;
  final bool isDisabled;

  const YJSecondaryButton({
    super.key,
    required this.onPressed,
    required this.child,
    this.isDisabled = false,
  });

  @override
  Widget build(BuildContext context) {
    return YJButton(
      onPressed: onPressed,
      color: YJColors.grey050,
      textColor: YJColors.secondary,
      isDisabled: isDisabled,
      child: child,
    );
  }
}

class YJOutlineButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget child;
  final bool isDisabled;

  const YJOutlineButton({
    super.key,
    required this.onPressed,
    required this.child,
    this.isDisabled = false,
  });

  @override
  Widget build(BuildContext context) {
    return YJButton(
      onPressed: onPressed,
      isDisabled: isDisabled,
      isOutline: true,
      textColor: YJColors.textPrimary,
      child: child,
    );
  }
}
