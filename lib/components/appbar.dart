import 'package:flutter/material.dart';
import '../theme/colors.dart';

class YJAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool showBackButton;
  final bool showCloseButton;
  final List<Widget>? actions;
  final Color? backgroundColor;
  final Color? titleColor;
  final Color? iconColor;

  const YJAppBar({
    super.key,
    required this.title,
    this.showBackButton = true,
    this.showCloseButton = false,
    this.actions,
    this.backgroundColor,
    this.titleColor,
    this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: showBackButton
          ? IconButton(
              icon: Icon(Icons.arrow_back,
                  color: iconColor ?? YJColors.secondary),
              onPressed: () {
                Navigator.of(context).pop();
              },
            )
          : null,
      title: Text(
        title,
        style: TextStyle(color: titleColor ?? YJColors.secondary),
      ),
      backgroundColor: backgroundColor ?? YJColors.primary,
      actions: [
        ...?actions,
        if (showCloseButton)
          IconButton(
            icon: Icon(Icons.close, color: iconColor ?? YJColors.secondary),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
