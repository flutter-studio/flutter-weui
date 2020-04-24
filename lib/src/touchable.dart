import 'package:flutter/material.dart';

/// 按下时高亮
class TouchableHighlight extends StatefulWidget {
  TouchableHighlight({
    Key key,
    @required this.child,
    this.onPressed,
    this.color = const Color(0xFFFFFFFF),
    this.activeColor = const Color(0xFFDEDEDE),
    this.style = const TextStyle(),
    this.activeStyle = const TextStyle(),
    this.disabled = false,
  }) : super(key: key);

  final Widget child;
  final VoidCallback onPressed;
  final Color color;
  final TextStyle style;
  final TextStyle activeStyle;
  final Color activeColor;
  final bool disabled;
  @override
  _TouchableHighlightState createState() => _TouchableHighlightState();
}

class _TouchableHighlightState extends State<TouchableHighlight> {
  @override
  initState() {
    super.initState();
    bg = widget.color;
    _style = widget.style;
  }

  Color bg;
  TextStyle _style;

  _onTapDown(e) {
    if (widget.disabled) return;
    setState(() {
      bg = widget.activeColor;
      _style = widget.activeStyle;
    });
  }

  _onTapUp(e) {
    if (widget.disabled) return;
    setState(() {
      bg = widget.color;
      _style = widget.style;
    });
    if (widget.onPressed != null) widget.onPressed();
  }

  _onTapCancel() {
    if (widget.disabled) return;
    setState(() {
      bg = widget.color;
      _style = widget.style;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTapDown: _onTapDown,
      onTapUp: _onTapUp,
      onTapCancel: _onTapCancel,
      child: Container(
        color: bg,
        child: DefaultTextStyle(
          style: _style,
          child: widget.child,
        ),
      ),
    );
  }
}

/// 按下时不透明度发生变化
class TouchableOpacity extends StatefulWidget {
  TouchableOpacity({Key key, @required this.child, this.onPressed})
      : super(key: key);

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

  _onTapCancel() {
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
