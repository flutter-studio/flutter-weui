import 'package:flutter/material.dart';

/// 按下时高亮
class TouchableHighlight extends StatefulWidget {
  TouchableHighlight({Key key, @required this.child, this.onPressed}) : super(key: key);

  final Widget child;
  final VoidCallback onPressed;
  @override
  _TouchableHighlightState createState() => _TouchableHighlightState();
}

class _TouchableHighlightState extends State<TouchableHighlight> {
  Color bg = Color(0xFFFFFFFF);

  _onTapDown(e) {
    setState(() {
      bg = Color(0xFFDEDEDE);
    });
  }

  _onTapUp(e) {
    setState(() {
      bg = Color(0xFFFFFFFF);
    });
    if (widget.onPressed != null) widget.onPressed();
  }

  _onTapCancel(){
    setState(() {
      bg = Color(0xFFFFFFFF);
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: this._onTapDown,
      onTapUp: this._onTapUp,
      onTapCancel: this._onTapCancel,
      child: Container(
        color: bg,
        child: widget.child,
      ),
    );
  }
}

/// 按下时不透明度发生变化
class TouchableOpacity extends StatefulWidget {
  TouchableOpacity({Key key, @required this.child, this.onPressed}) : super(key: key);

  final Widget child;
  final VoidCallback onPressed;

  @override
  _TouchableOpacityState createState() => _TouchableOpacityState();
}

class _TouchableOpacityState extends State<TouchableOpacity> {
  double opacity = 1;

  _onTapDown(e) {
    setState(() {
      opacity = 0.2;
    });
  }

  _onTapUp(e) {
    setState(() {
      opacity = 1;
    });
    if (widget.onPressed != null) widget.onPressed();
  }

  _onTapCancel(){
    setState(() {
      opacity = 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: this._onTapDown,
      onTapUp: this._onTapUp,
      onTapCancel: this._onTapCancel,
      child: Opacity(
        opacity: opacity,
        child: widget.child,
      ),
    );
  }
}
