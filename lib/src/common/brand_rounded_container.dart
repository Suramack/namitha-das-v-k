import 'package:flutter/material.dart';

class RoundedContainer extends StatelessWidget {
  final Widget? child;
  final double? borderRadius, width, height;
  final Color? borderColor, color;
  final List<BoxShadow>? boxShadow;
  final Function? onTap;
  const RoundedContainer({
    super.key,
    this.child,
    this.borderRadius,
    this.borderColor,
    this.boxShadow,
    this.width,
    this.height,
    this.color,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap?.call();
      },
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: color ?? Colors.white,
          borderRadius: BorderRadius.circular(borderRadius ?? 12),
          border: Border.all(color: borderColor ?? Colors.transparent),
          boxShadow: boxShadow,
        ),
        child: child,
      ),
    );
  }
}
