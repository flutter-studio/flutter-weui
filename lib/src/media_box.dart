import 'package:flutter/material.dart';
import 'touchable.dart';
import 'line.dart';
import 'base/theme.dart';

class MediaBoxTitle extends StatelessWidget {
  MediaBoxTitle({
    this.child,
  });
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.w400,
          height: 1.4,
          color: WeUITheme.of(context).textTitleColor),
      child: child,
    );
  }
}

class MediaBoxDesc extends StatelessWidget {
  MediaBoxDesc({
    this.child,
  });
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 4),
      child: DefaultTextStyle(
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          height: 1.4,
          color: WeUITheme.of(context).textTipsColor
        ),
        child: child,
      ),
    );
  }
}

class MediaBoxAppMsg extends StatelessWidget {
  MediaBoxAppMsg({
    this.header,
    this.body,
  });
  final Widget header;
  final Widget body;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          width: 60,
          height: 60,
          margin: const EdgeInsets.only(right: 16),
          child: header,
        ),
        Expanded(
          child: body ?? SizedBox(),
        )
      ],
    );
  }
}


class MediaBox extends StatelessWidget {
  MediaBox({
    this.onPress,
    this.child,
  });
  final VoidCallback onPress;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return TouchableHighlight(
      onPressed: onPress,
      disabled: onPress == null,
      activeColor: WeUITheme.of(context).bgActiveColor,
      color: Colors.transparent,
      activeStyle: TextStyle(color: Colors.black),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          HorizontalLine(margin: EdgeInsets.only(left: 16)),
          Padding(
            padding: const EdgeInsets.all(16),
            child: child,
          )
        ],
      ),
    );
  }
}
