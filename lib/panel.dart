import 'package:flutter/material.dart';
import 'touchable.dart';

class Panel extends StatelessWidget {
  Panel({Key key, this.title, @required this.body, this.footer = false, this.onFooterPressed}) : super(key: key);
  final String title;
  final Widget body;
  final bool footer;
  final VoidCallback onFooterPressed;
  @override
  Widget build(BuildContext context) {
    TextStyle titleStyle = TextStyle(fontSize: 13, color: Color(0xff808080));
    return Container(
      decoration: BoxDecoration(color: Colors.white, border: Border(top: BorderSide(color: const Color(0xffe5e5e5)))),
      margin: const EdgeInsets.only(top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Offstage(
            child: Container(
              padding: const EdgeInsets.only(top: 14, right: 15, bottom: 10, left: 15),
              child: Text(title, style: titleStyle),
            ),
            offstage: title == null,
          ),
          Offstage(
            child: Divider(height: 1, color: const Color(0xffe5e5e5), indent: 15),
            offstage: title == null,
          ),
          Container(child: body),
          Offstage(
            child: Divider(height: 1, color: const Color(0xffe5e5e5), indent: 15),
            offstage: !footer,
          ),
          Offstage(
            child: TouchableHighlight(
              onPressed: () {
                if (onFooterPressed != null) onFooterPressed();
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("查看更多", style: TextStyle(fontSize: 14, color: Color(0xff586c94))),
                    Icon(Icons.chevron_right, color: Color(0xFF888888), size: 20)
                  ],
                ),
              ),
            ),
            offstage: !footer,
          ),
          Divider(height: 1, color: const Color(0xffe5e5e5), indent: 0),
        ],
      ),
    );
  }
}
