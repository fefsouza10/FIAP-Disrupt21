import 'package:flutter/material.dart';

class ScreenController extends StatelessWidget {
  final bool isCollapsed;
  final double screenWidth;
  final Duration duration;
  final Animation<double> scaleAnimation;
  final AnimationController controller;
  final Function onMenuTap;
  final Widget child;

  const ScreenController({
    Key key,
    this.isCollapsed,
    this.screenWidth,
    this.duration,
    this.scaleAnimation,
    this.controller,
    this.onMenuTap,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      duration: duration,
      top: 0,
      bottom: 0,
      left: isCollapsed ? 0 : 0.6 * screenWidth,
      right: isCollapsed ? 0 : -0.4 * screenWidth,
      child: ScaleTransition(
        scale: scaleAnimation,
        child: Material(
          animationDuration: const Duration(milliseconds: 300),
          elevation: 8,
          child: child,
        ),
      ),
    );
  }
}
