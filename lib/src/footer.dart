import 'package:flutter/material.dart';
import 'package:flutter_weui/src/base/theme.dart';
import 'touchable.dart';

class Link {
  Link({
    this.text,
    this.onPressed,
  });
  final String text;
  final VoidCallback onPressed;
}

class Footer extends StatelessWidget {
  Footer({
    Key key,
    this.text,
    this.links = const [],
  }) : super(key: key);
  final String text;
  final List<Link> links;

  @override
  Widget build(BuildContext context) {
    final WeUIThemeData theme = WeUITheme.of(context);
    final Color color = theme.textTipsColor;
    final Color linkColor = theme.linkDefaultColor;
    // linkText使用height时不能使text垂直居中
    // 所以设置它的垂直padding以达到相同的效果
    final TextStyle linkStyle = TextStyle(
      fontSize: 14,
      color: linkColor,
    );
    final TextStyle textStyle = TextStyle(
      fontSize: 12,
      height: 1.4,
      color: color,
    );
    List<Widget> linkWidgets = [];
    for (int i = 0; i < links.length; i++) {
      var link = links[i];
      Widget linkWidget = TouchableOpacity(
        onPressed: () {
          var _onPressed = link.onPressed;
          if (_onPressed != null) _onPressed();
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 14 * 0.2),
          child: Text(
            link.text,
            style: linkStyle,
            textAlign: TextAlign.center,
          ),
        ),
      );
      linkWidgets.add(linkWidget);
      if (i != links.length - 1) {
        double top = 14 * 0.36;
        double dividerHeight = 14 * 1.4 - 2 * top;
        linkWidgets.add(
          Container(
            height: dividerHeight,
            width: 1,
            color: theme.lineLightColor,
            margin: EdgeInsets.symmetric(vertical: top),
          ),
        );
      }
    }
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: linkWidgets,
        ),
        text != null
            ? Text(
                text,
                style: textStyle,
                textAlign: TextAlign.center,
              )
            : SizedBox(),
      ],
    );
  }
}
