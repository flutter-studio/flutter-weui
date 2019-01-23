import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:flutter/services.dart';

class Cells extends StatelessWidget {
  Cells({@required this.children, Key key}) : super(key: key);
  final List<Widget> children;

  ///插入分隔线
  _insertDivider(BuildContext context) {
    List<Widget> newChildren = children;
    for (int i = children.length -1; i > 0; i--) {
      newChildren.insert(i, Divider(height: 1/MediaQuery.of(context).devicePixelRatio,indent: 15,));
    }
    return newChildren;
  }

  @override
  Widget build(BuildContext context) {
    BorderSide side = BorderSide(width: 1 / MediaQuery.of(context).devicePixelRatio, color: Color(0xFFD9D9D9));
    return Container(
      child: Row(
        children: <Widget>[
          Expanded(
              child: Column(
            children: _insertDivider(context),
          ))
        ],
      ),
      decoration: BoxDecoration(border: Border(top: side, bottom: side)),
    );
  }
}

class Cell extends StatefulWidget {
  Cell({this.title = "", Key key, this.secondaryText = "", this.banner, this.access = false, this.onPressed,this.radio,this.checkBox}) : super(key: key);
  final String title;
  final String secondaryText;
  final Widget banner;
  final bool access;
  final VoidCallback onPressed;
  final bool radio;
  final bool checkBox;
  @override
  State<StatefulWidget> createState() => _Cell();
}

class _Cell extends State<Cell> {
  Color bg = Color(0xFFFFFFFF);

  _onTapDown(e) {
    if (widget.access == true && widget.onPressed != null) {
      setState(() {
        bg = Color(0xFFDEDEDE);
      });
    }
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
      onTapDown: this._onTapDown,
      onTapUp: this._onTapUp,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        color: bg,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Offstage(
              child: Icon(
                Icons.check_circle,
                color: Color(0xFF1AAD19),
                size: 20,
              ),
              offstage: widget.checkBox != true,
            ),
            Offstage(
              child: Container(
                width: 20,
                height: 20,
                child: widget.banner,
                margin: const EdgeInsets.only(right: 5),
              ),
              offstage: widget.banner == null || widget.checkBox == true,
            ),
            Expanded(
                child: Text(
              widget.title,
              style: TextStyle(fontSize: 17),
            )),
            Text(
              widget.secondaryText,
              style: TextStyle(fontSize: 17, color: Color(0xFF888888)),
            ),
            Offstage(
              child: Icon(
                Icons.chevron_right,
                color: Color(0xFF888888),
                size: 20,
              ),
              offstage: widget.access != true || widget.radio == true,
            ),
            Offstage(
              child: Icon(
                Icons.check,
                color: Color(0xFF1AAD19),
                size: 20,
              ),
              offstage: widget.radio != true,
            ),
          ],
        ),
      ),
    );
  }
}
