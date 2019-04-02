import 'package:flutter/material.dart';
import 'constants.dart';
import 'util.dart';
import 'touchable.dart';
class PreView extends StatelessWidget {
  PreView({this.header, this.body, this.footer,Key key}):super(key: key);

  final PreViewHeader header;
  final PreViewBody body;
  final PreViewFooter footer;
  getChildren() {
    List<Widget> list = [];
    if (header != null) list.add(header);
    if (body != null) list.add(body);
    if (footer != null) list.add(footer);
    return list.toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(border: Border(bottom: BorderSide(color: Constants.borderColor), top: BorderSide(color: Constants.borderColor)), color: Colors.white),
      child: Column(
        children: getChildren(),
      ),
    );
  }
}

/// PreViewItem组件
class PreViewItem extends StatelessWidget {
  PreViewItem({this.label, this.value,Key key}):super(key: key);

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            label,
            style: TextStyle(color: Color(0xFF999999), fontSize: emToPx(0.9)),
          ),
          Text(
            value,
            style: TextStyle(color: Color(0xFF999999), fontSize: emToPx(0.9)),
          )
        ],
      ),
    );
  }
}

/// PreViewBody组件
class PreViewBody extends StatelessWidget {
  PreViewBody({this.children = const [],Key key}):super(key: key);

  final List<PreViewItem> children;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Constants.borderColor))),
      child: Column(
        children: children.toList(),
      ),
    );
  }
}

/// PreViewHeader组件
class PreViewHeader extends StatelessWidget {
  PreViewHeader({this.label, this.value,Key key}):super(key: key);

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Container(
        padding: const EdgeInsets.only(top: 10, bottom: 10, right: 15),
        decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Constants.borderColor,width: 1/MediaQuery.of(context).devicePixelRatio))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              label,
              style: TextStyle(color: Color(0xFF999999), fontSize: emToPx(0.9)),
            ),
            Text(
              value,
              style: TextStyle(
                fontSize: emToPx(1.2),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class PreViewButton extends StatelessWidget {
  PreViewButton({this.text = "", this.onPressed, this.primary = false,Key key}):super(key: key);

  final String text;
  final VoidCallback onPressed;
  final bool primary;

  @override
  Widget build(BuildContext context) {
    return TouchableOpacity(
      child: Container(
        height: Constants.btnHeight,
        child: Center(
          child: Text(
            text,
            style: TextStyle(fontSize: Constants.btnFontSize, color: primary == true ? Constants.primaryColor : Color(0xFF999999)),
          ),
        ),
      ),
      onPressed: onPressed,
    );
  }
}

class PreViewFooter extends StatelessWidget {
  PreViewFooter({this.children = const [],Key key}):super(key: key);

  final List<PreViewButton> children;

  getChildren() {
    List<Widget> list = [];
    for (int i = 0; i < children.length; i++) {
      list.add(Expanded(child: children.elementAt(i)));
      list.add(Container(
        width: 1,
        height: Constants.btnHeight,
        color: Constants.borderColor,
      ));
    }
    return list.toList();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: getChildren(),
    );
  }
}
