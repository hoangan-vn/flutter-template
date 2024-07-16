import 'package:flutter/material.dart';

class XPadding extends StatelessWidget {
  const XPadding({
    super.key,
    this.top = 0.0,
    this.right = 0.0,
    this.bottom = 0.0,
    this.left = 0.0,
    required this.child,
  });

  final double top;
  final double right;
  final double bottom;
  final double left;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(left, top, right, bottom),
      child: child,
    );
  }

  static Widget all({
    required double padding,
    required Widget child,
  }) {
    return Padding(
      padding: EdgeInsets.all(padding),
      child: child,
    );
  }

  static Widget vertical({
    required double vertical,
    required Widget child,
  }) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: vertical),
      child: child,
    );
  }

  static Widget horizontal({
    required double horizontal,
    required Widget child,
  }) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontal),
      child: child,
    );
  }
}
