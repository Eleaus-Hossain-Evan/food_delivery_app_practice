import 'package:flutter/material.dart';

import 'package:food_delivery_app_practice/core/animations/animations.dart';
import 'package:food_delivery_app_practice/core/utils/ui_helper.dart';

class ClippedContainer extends StatelessWidget {
  const ClippedContainer({
    Key? key,
    required this.child,
    this.height,
    this.backgroundColor,
    this.isAnimate = true,
    this.alignment = Alignment.center,
  }) : super(key: key);

  final Widget child;
  final double? height;
  final bool isAnimate;
  final Color? backgroundColor;
  final Alignment alignment;

  @override
  Widget build(BuildContext context) {
    final container = Container(
      height: height,
      margin: const EdgeInsets.only(left: space2x),
      alignment: alignment,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(rf(40)),
          bottomLeft: Radius.circular(rf(40)),
        ),
        color: backgroundColor ?? Theme.of(context).primaryColor,
      ),
      child: child,
    );
    return isAnimate
        ? SlideAnimation(
            intervalStart: 0.1,
            begin: const Offset(450, 0),
            duration: const Duration(milliseconds: 850),
            child: container,
          )
        : container;
  }
}
