import 'package:flutter/material.dart';
import 'touchable.dart';

class Info extends StatelessWidget {
  Info({Key key, this.children}) : super(key: key);
  final List<Widget> children;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Row(
        children: children,
      ),
    );
  }
}

class Meta extends StatelessWidget {
  Meta({Key key, this.text}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = TextStyle(color: Color(0xFFCECECE), fontSize: 13);
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: Text(text, style: textStyle),
    );
  }
}

class MetaExtra extends StatelessWidget {
  MetaExtra({Key key, this.text}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = TextStyle(color: Color(0xFFCECECE), fontSize: 13);
    return Container(
      padding: const EdgeInsets.only(left: 8),
      decoration: BoxDecoration(border: Border(left: BorderSide(color: const Color(0xffcecece)))),
      child: Text(text, style: textStyle),
    );
  }
}

class MediaBox extends StatelessWidget {
  MediaBox({Key key, this.thumb, this.title = "", this.desc = "", this.info}) : super(key: key);
  final Widget thumb;
  final String title;
  final String desc;
  final Info info;

  @override
  Widget build(BuildContext context) {
    TextStyle titleStyle = TextStyle(fontSize: 17, fontWeight: FontWeight.w400, color: Colors.black);
    TextStyle descStyle = TextStyle(fontSize: 13, color: Color(0xFF808080));
    return TouchableHighlight(
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Offstage(
                  child: Container(
                    height: 60,
                    width: 60,
                    margin: const EdgeInsets.only(right: 10),
                    child: thumb,
                  ),
                  offstage: thumb == null,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[Text(title, style: titleStyle), Text(desc, style: descStyle)],
                  ),
                )
              ],
            ),
            Offstage(
              child: info,
              offstage: info == null,
            )
          ],
        ),
      ),
    );
  }
}
