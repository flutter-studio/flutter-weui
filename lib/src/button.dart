import 'package:flutter/material.dart';
import 'package:flutter_weui/flutter_weui.dart';
import 'package:flutter_weui/src/base/button_theme.dart';
import 'package:flutter/cupertino.dart';

///按钮的三种类型

enum ButtonType {
  primay,
  warn,
  default_,
}

class Button extends StatefulWidget {
  Button({
    Key key,
    this.disabled = false,
    this.loading = false,
    this.text,
    this.type = ButtonType.default_,
    this.onPress,
  }) : super(key: key);
  final bool disabled;
  final String text;
  final ButtonType type;
  final bool loading;
  final VoidCallback onPress;
  @override
  _ButtonState createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  Color fontColor;
  // 初始时的背景颜色
  Color bgInitColor;
  // 按下时的背景颜色
  Color bgActiveColor;
  // 释放之后文本颜色
  Color fontVisitedColor;

  Color bgColor;

  WeUIThemeData get theme => WeUITheme.of(context);

  WeUIButtonThemeData get buttonTheme => WeUIButtonTheme.of(context) ?? theme.buttonTheme;

  @override
  void initState() {
    super.initState();
  }

  // 初始化颜色
  initColor() {
    if (widget.disabled) {
      fontColor = buttonTheme.btnDisabledFontColor;
      bgColor = buttonTheme.btnDisabledBg;
      bgInitColor = bgColor;
      return;
    }
    switch (widget.type) {
      case ButtonType.primay:
        fontColor = buttonTheme.btnFontColor;
        bgColor = buttonTheme.btnPrimaryBg;
        bgActiveColor = buttonTheme.btnPrimaryActiveBg;
        fontVisitedColor = buttonTheme.btnPrimaryFontColor;
        if (widget.loading) {
          bgColor = bgActiveColor;
          fontColor = Colors.white;
        }
        bgInitColor = bgColor;
        break;
      case ButtonType.warn:
        fontColor = buttonTheme.btnWarnFontColor;
        bgColor = buttonTheme.btnWarnBg;
        bgActiveColor = buttonTheme.btnWarnActiveBg;
        fontVisitedColor = buttonTheme.btnWarnFontColor;
        if (widget.loading) bgColor = bgActiveColor;
        bgInitColor = bgColor;
        break;
      default:
        fontColor = buttonTheme.btnDefaultFontColor;
        bgColor = buttonTheme.btnDefaultBg;
        bgActiveColor = buttonTheme.btnDefaultActiveBg;
        fontVisitedColor = buttonTheme.btnDefaultFontColor;
        if (widget.loading) bgColor = bgActiveColor;
        bgInitColor = bgColor;
        break;
    }
    markNeedBuild();
  }

  onTapDown(_) {
    if (widget.disabled || widget.loading) return;
    bgColor = bgActiveColor;
    markNeedBuild();
  }

  onTapUp(_) {
    if (widget.disabled || widget.loading) return;
    if (widget.onPress != null) widget.onPress();
    bgColor = bgInitColor;
    fontColor = fontVisitedColor;
    markNeedBuild();
  }

  onTapCancel() {
    if (widget.disabled || widget.loading) return;
    bgColor = bgInitColor;
    markNeedBuild();
  }

  markNeedBuild() => setState(() {});

  @override
  Widget build(BuildContext context) {
    final double btnWidth = buttonTheme.btnWidth;
    final double fontSize = buttonTheme.btnFontSize;
    final double radius = buttonTheme.btnBorderRadius;
    final double btnHeight = buttonTheme.btnHeight;
    final double lineHeight = (btnHeight - 16) / fontSize;
    return GestureDetector(
      onTapDown: onTapDown,
      onTapUp: onTapUp,
      onTapCancel: onTapCancel,
      behavior: HitTestBehavior.opaque,
      child: Container(
        width: btnWidth,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(radius), color: bgColor),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            widget.loading == true && !widget.disabled
                ? Padding(
                    padding: EdgeInsets.only(right: 0.34 * fontSize),
                    child: CupertinoActivityIndicator(radius: 9),
                  )
                : SizedBox(),
            Padding(
              padding: EdgeInsets.symmetric(vertical: lineHeight / 2.0),
              child: Text(
                widget.text ?? '按钮',
                style: TextStyle(
                  fontSize: fontSize,
                  color: fontColor,
                ),
              ),
            ),
          ],
        ),
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 24),
      ),
    );
  }

  @override
  void didUpdateWidget(Button oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.loading != oldWidget.loading || widget.disabled != oldWidget.disabled || widget.type != oldWidget.type) {
      initColor();
    }
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    initColor();
  }
}
