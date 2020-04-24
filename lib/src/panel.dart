import 'package:flutter/material.dart';
import 'line.dart';
import 'base/theme.dart';

class Panel extends StatelessWidget {
  Panel({
    this.header,
    this.child,
  });
  final PanelHeader header;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return LineContainer(
      color: WeUITheme.of(context).bg2,
      top: BorderSide(color: WeUITheme.of(context).lineLightColor),
      bottom: BorderSide(color: WeUITheme.of(context).lineLightColor),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[header ?? SizedBox(), child ?? SizedBox()],
      ),
    );
  }
}

class PanelHeader extends StatelessWidget {
  PanelHeader({
    this.child,
  });
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(
            top: 16,
            left: 16,
            right: 16,
            bottom: 13,
          ),
          child: DefaultTextStyle(
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w700,
              color: WeUITheme.of(context).textTitleColor,
            ),
            child: child,
          ),
        ),
      ],
    );
  }
}