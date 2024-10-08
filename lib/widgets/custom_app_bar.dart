import 'package:flutter/material.dart';

import 'custom_icon.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    required this.title,
    required this.icon,
    this.onPressed,
  });
  final String title;
  final IconData icon;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 7,
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 32,
        ),
      ),
      actions: [
        IconButton(
          onPressed: onPressed,
          icon: CustomIcon(icon: icon),
        )
      ],
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
