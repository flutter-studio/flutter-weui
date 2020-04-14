import 'package:flutter/material.dart';

class ActionSheetPressDetails {
  ActionSheetPressDetails({this.index, this.text});

  final int index;
  final String text;

  @override
  String toString() {
    return 'ActionSheetPressDetails{index: $index, text: $text}';
  }
}

typedef ActionSheetPressVoidCallBack = void Function(
    ActionSheetPressDetails details);

///展示手机action
class ActionSheet {
  ///展示ActionSheet
  static show(
    BuildContext context, {
    List<String> data,
    ActionSheetPressVoidCallBack onPress,
    Color containerColor = const Color(0xEFEFF4),
    Color textColor = Colors.black,
  }) {
    List<Widget> widgets = List<Widget>();
    for (int i = data.length - 1; i >= 0; i--) {
      widgets.insert(
          0,
          _Cell(
            textColor: textColor,
            text: data.elementAt(i),
            onPressed: () {
              if (onPress != null)
                onPress(
                    ActionSheetPressDetails(index: i, text: data.elementAt(i)));
              Navigator.of(context).pop();
            },
          ));
      if (i != 0)
        widgets.insert(
            0, Divider(height: 1 / MediaQuery.of(context).devicePixelRatio));
    }
    widgets.add(Padding(
      padding: const EdgeInsets.only(top: 6),
      child: _Cell(
        textColor: textColor,
        text: "取消",
        onPressed: () => Navigator.of(context).pop(),
      ),
    ));
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            color: containerColor,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: widgets.toList(),
            ),
          );
        });
  }
}

class _Cell extends StatefulWidget {
  _Cell({Key key, this.text, this.onPressed, this.textColor}) : super(key: key);

  final String text;
  final VoidCallback onPressed;
  final Color textColor;

  @override
  __CellState createState() => __CellState();
}

class __CellState extends State<_Cell> {
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

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapUp: _onTapUp,
      onTapDown: _onTapDown,
      child: Container(
        color: bg,
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              widget.text,
              style: TextStyle(fontSize: 18, color: widget.textColor),
            )
          ],
        ),
      ),
    );
  }
}
