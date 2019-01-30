import 'package:flutter/material.dart';
import 'touchable.dart';

class Link {
  Link({this.text, this.onPressed});
  final String text;
  final VoidCallback onPressed;
}

class Footer extends StatelessWidget {
  Footer({Key key, this.text = "", this.links = const []}) : super(key: key);
  final String text;
  final List<Link> links;

  List<Widget> _getLinks() {
    List<Widget> linksWidget = List();
    for (int i = 0; i < links.length; i++) {
      if (i == links.length - 1) {
        linksWidget.add(TouchableOpacity(
          onPressed: () {
            VoidCallback _onPressed = links.elementAt(i).onPressed;
            if (_onPressed != null) _onPressed();
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              links.elementAt(i).text,
              style: TextStyle(fontSize: 14, color: Color(0xff586c94)),
            ),
          ),
        ));
      } else {
        linksWidget.add(TouchableOpacity(
          onPressed: () {
            VoidCallback _onPressed = links.elementAt(i).onPressed;
            if (_onPressed != null) _onPressed();
          },
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            decoration: BoxDecoration(border: Border(right: BorderSide(color: Color(0xffe5e5e5)))),
            child: Text(
              links.elementAt(i).text,
              style: TextStyle(fontSize: 14, color: Color(0xff586c94)),
            ),
          ),
        ));
      }
    }
    return linksWidget;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(mainAxisAlignment: MainAxisAlignment.center, children: _getLinks()),
        Text(text, style: TextStyle(fontSize: 12, color: const Color(0xff808080))),
      ],
    );
  }
}
