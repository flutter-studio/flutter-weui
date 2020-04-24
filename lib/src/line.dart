import 'package:flutter/material.dart';
import 'base/theme.dart';

class LineContainer extends StatelessWidget {
  LineContainer({
    this.top,
    this.bottom,
    this.color,
    this.child,
    this.padding,
    this.margin,
  });
  final BorderSide top;
  final BorderSide bottom;
  final Color color;
  final Widget child;
  final EdgeInsetsGeometry padding;
  final EdgeInsetsGeometry margin;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      margin: margin,
      child: child,
      decoration: BoxDecoration(
        color: color,
        border: Border(
          top: top,
          bottom: bottom,
        ),
      ),
    );
  }
}

class VerticalLine extends StatelessWidget {
  VerticalLine({
    @required this.height,
    this.color,
    this.margin,
  }) : assert(height != null);
  final double height;
  final Color color;
  final EdgeInsetsGeometry margin;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color ?? WeUITheme.of(context).lineLightColor,
      height: height,
      margin: margin ?? const EdgeInsets.all(0),
      width: 1,
    );
  }
}

class HorizontalLine extends StatelessWidget {
  HorizontalLine({
    this.color,
    this.margin,
  });
  final Color color;
  final EdgeInsetsGeometry margin;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color ?? WeUITheme.of(context).lineLightColor,
      height: 1,
      margin: margin ?? const EdgeInsets.all(0),
    );
  }
}
