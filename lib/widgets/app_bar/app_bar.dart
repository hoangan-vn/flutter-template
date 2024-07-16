import 'package:flutter/material.dart';

class XAppBar extends StatelessWidget implements PreferredSizeWidget {
  const XAppBar({
    super.key,
    this.actions,
    this.leading,
    this.backgroundColor,
    this.title,
    required this.child,
    this.height = kToolbarHeight,
  });

  final Widget child;
  final double height;
  final List<Widget>? actions;
  final Widget? leading;
  final Color? backgroundColor;
  final Widget? title;

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: preferredSize.height,
      color: Colors.orange,
      alignment: Alignment.center,
      child: child,
    );
  }
}
