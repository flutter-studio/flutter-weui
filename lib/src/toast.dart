import 'package:flutter/material.dart';
import 'package:smart_color/smart_color.dart';
import 'package:flutter/cupertino.dart';

///weui toast 组件
class Toast {
  static bool _visible = false;

  /// 成功提示框弹出后三秒关闭
  static success(BuildContext context, String text, {Duration duration = const Duration(seconds: 3)}) async {
    if (_visible == true) return;
    _visible = true;
    showDialog(
        context: context,
        builder: (BuildContext context) => _ToastDialog(
              text: text,
            ));
    Future.delayed(duration, () => close(context));
  }

  /// 加赞框弹出，需要手动关闭
  static loading(BuildContext context, String text) {
    if (_visible == true) return;
    _visible = true;
    showDialog(
        context: context,
        builder: (BuildContext context) => _ToastDialog(
              text: text,
              loading: true,
            ));
  }

  ///关闭弹框
  static close(BuildContext context) {
    if (_visible == false) return;
    Navigator.of(context).pop();
    _visible = false;
  }
}

class _ToastDialog extends Dialog {
  _ToastDialog({Key key, this.text, this.loading}) : super(key: key);
  final String text;
  final bool loading;

  @override
  Widget build(BuildContext context) {
    return Material(
      //创建透明层
      type: MaterialType.transparency, //透明类型
      child: WillPopScope(
          child: Center(
            //保证控件居中效果
            child: new SizedBox(
              //强制子控件具有特定的宽度和高度
              width: 120.0,
              height: 120.0,
              child: new Container(
                padding: const EdgeInsets.all(15),
                decoration: ShapeDecoration(
                  color: SmartColor.parse("rgba(40, 40, 40, 0.75)"),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(5.0),
                    ),
                  ),
                ),
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    loading == true
                        ? CupertinoActivityIndicator(
                            radius: 15,
                          )
                        : Icon(
                            Icons.check,
                            size: 56,
                            color: Colors.white,
                          ),
                    new Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: new Text(
                        text,
                        style: new TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          onWillPop: () => Future.value(false)),
    );
  }
}
