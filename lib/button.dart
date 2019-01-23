import 'package:flutter/material.dart';
import 'package:smart_color/smart_color.dart';
import 'package:flutter/services.dart';
import 'package:flutter/cupertino.dart';

///按钮的三种类型
enum ButtonType {
  btnPrimary,
  btnWarn,
  btnDefault,
}

class Button extends StatefulWidget {
  Button({Key key, this.type = ButtonType.btnDefault, this.disabled, this.onPressed, this.loading,this.text = "button"}) : super(key: key);

  /// 按钮类型
  final ButtonType type; //按钮类型
  final bool disabled; //是否可用
  final VoidCallback onPressed; //按下时进行触发
  final bool loading; //是否加载中
  final String text;//按钮上的文字
  @override
  State<StatefulWidget> createState() => _Button();
}

class _ButtonColor {
  Color fontColor;
  Color activeFontColor;
  Color disabledFontColor;

  Color bg;
  Color activeBg;
  Color disabledBg;
}

///默认的按钮颜色
class _ButtonDefault extends _ButtonColor {
  Color fontColor = Color(0xFF000000);
  Color activeFontColor = Color.fromARGB((0.6 * 255).toInt(), 0, 0, 0);
  Color disabledFontColor = Color.fromARGB((0.3 * 255).toInt(), 0, 0, 0);

  Color bg = Color(0xFFF8F8F8);
  Color activeBg = Color(0xFFDEDEDE);
  Color disabledBg = Color(0xFFF7F7F7);
}

///警告按钮颜色
class _ButtonWarn extends _ButtonColor {
  Color fontColor = Color(0xFFFFFFFF); //按钮文本颜色
  Color activeFontColor = Color.fromARGB((0.6 * 255).toInt(), 255, 255, 255); //按下时文本颜色
  Color disabledFontColor = Color.fromARGB((0.6 * 255).toInt(), 255, 255, 255); //不可用时文本颜色

  Color bg = Color(0xFFE64340);
  Color activeBg = Color(0xFFCE3C39);
  Color disabledBg = Color(0xFFEC8B89);
}

///按钮主颜色
class _ButtonPrimary extends _ButtonColor {
  Color fontColor = Color(0xFFFFFFFF); //按钮文本颜色
  Color activeFontColor = Color.fromARGB((0.6 * 255).toInt(), 255, 255, 255); //按下时文本颜色
  Color disabledFontColor = Color.fromARGB((0.6 * 255).toInt(), 255, 255, 255); //不可用时文本颜色

  Color bg = Color(0xFF1AAD19);
  Color activeBg = Color(0xFF179B16);
  Color disabledBg = SmartColor.parse("#9ED99D");
}

class _Button extends State<Button> {
  double wuiBtnHeight = 46; //按钮高度
  double wuiBtnFontSize = 18; //按钮文本尺寸
  double wuiBtnBorderRadius = 5; //按钮borderRadius
  Color wuiBtnBorderColor = SmartColor.parse("rgba(0,0,0,.2)"); //按钮border颜色
  double wuiBtnDefaultGap = 15;

  double wuiBtnMiniFontSize = 13;
  double wuiBtnMiniHeight = 2.3;


  Color wuiBtnPlainPrimaryColor = SmartColor.parse("rgba(26,173,25,1)");
  Color wuiBtnPlainPrimaryBorderColor  = SmartColor.parse("rgba(26,173,25,1)");
  Color wuiBtnPlainPrimaryActiveColor = SmartColor.parse("rgba(26,173,25,.6)");
  Color wuiBtnPlainPrimaryActiveBorderColor = SmartColor.parse("rgba(26,173,25,.6)");

  Color wuiBtnPlainDefaultColor = SmartColor.parse("rgba(53,53,53,1)");
  Color wuiBtnPlainDefaultBorderColor = SmartColor.parse("rgba(53,53,53,1)");
  Color wuiBtnPlainDefaultActiveColor = SmartColor.parse("rgba(53,53,53,.6)");
  Color wuiBtnPlainDefaultActiveBorderColor = SmartColor.parse("rgba(53,53,53,.6)");

  Color fontColor;
  Color btnColor;

  _ButtonColor buttonColor;

  @override
  void initState() {
    super.initState();

    ///按钮颜色初始化
    buttonColor = _getButtonColor(widget.type);
    if (widget.disabled == true) {
      fontColor = buttonColor.disabledFontColor;
      btnColor = buttonColor.disabledBg;
    } else {
      fontColor = buttonColor.fontColor;
      btnColor = buttonColor.bg;
    }
  }

  ///获取按钮颜色
  _ButtonColor _getButtonColor(ButtonType type) {
    if (type == ButtonType.btnPrimary) return _ButtonPrimary();
    if (type == ButtonType.btnWarn) return _ButtonWarn();
    return _ButtonDefault();
  }

  _onTapDown(e) {
    if (widget.disabled == true || widget.loading == true ) return;
    setState(() {
      fontColor = buttonColor.activeFontColor;
      btnColor = buttonColor.activeBg;
    });
  }

  _onTapUp(e) {
    setState(() {
      fontColor = buttonColor.fontColor;
      btnColor = buttonColor.bg;
    });
    if (widget.onPressed != null) widget.onPressed();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: _onTapDown,
      onTapUp: _onTapUp,
      child: Container(
        height: wuiBtnHeight,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            widget.loading == true
                ? Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: CupertinoActivityIndicator(),
                  )
                : Text(""),
            Text(
              widget.text,
              style: TextStyle(
                color: fontColor,
                fontSize: wuiBtnFontSize,
              ),
            )
          ],
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(
            wuiBtnBorderRadius,
          )),
          border: Border.all(color: wuiBtnBorderColor, width: 1 / MediaQuery.of(context).devicePixelRatio),
          color: btnColor,
        ),
      ),
    );
  }
}
