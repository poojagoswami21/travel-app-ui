import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final Widget child;
  final BorderRadiusGeometry? borderRadius;
  final BorderSide? borderSide;
  final double elevation;
  final EdgeInsetsGeometry? padding;
  final Color? color;
  final EdgeInsetsGeometry? margin;

  const CustomCard({
    super.key,
    required this.child,
    this.borderRadius,
    this.borderSide,
    this.elevation = 0,
    this.padding,
    this.color,
    this.margin,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: margin ?? EdgeInsets.zero,
      color: color ?? Theme.of(context).cardColor,
      shape: RoundedRectangleBorder(
        borderRadius: borderRadius ?? BorderRadius.circular(18),
        side: borderSide ?? BorderSide(color: Colors.grey.shade300, width: 0.5),
      ),
      elevation: elevation,
      child: padding != null ? Padding(padding: padding!, child: child) : child,
    );
  }
}
