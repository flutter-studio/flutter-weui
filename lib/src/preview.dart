import 'package:flutter/material.dart';
import 'touchable.dart';
import 'base/theme.dart';

class PreView extends StatelessWidget {
  PreView({this.header, this.body, this.footer, Key key}) : super(key: key);

  final PreViewHeader header;
  final PreViewBody body;
  final PreViewFooter footer;
  @override
  Widget build(BuildContext context) {
    final WeUICellThemeData cellTheme =
        WeUICellTheme.of(context) ?? WeUITheme.of(context).cellTheme;
    final BorderSide borderSide = BorderSide(color: cellTheme.cellBorderColor);
    List<Widget> children = [];
    if (header != null) children.add(header);
    if (body != null) children.add(body);
    if (footer != null) children.add(footer);
    return Container(
      decoration: BoxDecoration(
        color: cellTheme.cellBg,
        border: Border(
          bottom: borderSide,
          top: borderSide,
        ),
      ),
      child: Column(
        children: children,
      ),
    );
  }
}

/// PreViewItem组件
class PreViewItem extends StatelessWidget {
  PreViewItem({this.label, this.value, Key key}) : super(key: key);

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        _Label(data: label, fontSize: 0.9 * 14, lineHeight: 2),
        Expanded(child: _Value(data: value, fontSize: 0.9 * 14, lineHeight: 2))
      ],
    );
  }
}

/// PreViewBody组件
class PreViewBody extends StatelessWidget {
  PreViewBody({this.children = const [], Key key}) : super(key: key);

  final List<PreViewItem> children;

  @override
  Widget build(BuildContext context) {
    final WeUIThemeData theme = WeUITheme.of(context);
    final WeUICellThemeData cellTheme =
        WeUICellTheme.of(context) ?? theme.cellTheme;
    return Padding(
      padding: EdgeInsets.all(cellTheme.cellGapV),
      child: Column(
        children: children,
      ),
    );
  }
}

/// PreViewHeader组件
class PreViewHeader extends StatelessWidget {
  PreViewHeader({
    this.label,
    this.value,
    Key key,
  }) : super(key: key);

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    final WeUIThemeData theme = WeUITheme.of(context);
    final WeUICellThemeData cellTheme =
        WeUICellTheme.of(context) ?? theme.cellTheme;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(cellTheme.cellGapV),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 0.75 * 14),
                child: _Label(data: label),
              ),
              Expanded(
                child: _Value(
                  data: value,
                  fontSize: 14 * 1.6,
                ),
              )
            ],
          ),
        ),
        Divider(
          height: 1,
          thickness: 1,
          indent: cellTheme.cellGapH,
          color: cellTheme.cellBorderColor,
        )
      ],
    );
  }
}

class _Label extends StatelessWidget {
  _Label({
    this.fontSize,
    this.data,
    this.lineHeight,
  });
  final String data;
  final double fontSize;
  final double lineHeight;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: fontSize ?? 14),
      constraints: BoxConstraints(minWidth: 4.0 * (fontSize ?? 14)),
      child: Text(
        data,
        style: TextStyle(
            fontSize: fontSize,
            color: WeUITheme.of(context).textDescColor,
            height: lineHeight),
      ),
    );
  }
}

class _Value extends StatelessWidget {
  _Value({
    this.fontSize,
    this.data,
    this.lineHeight,
  });
  final String data;
  final double fontSize;
  final double lineHeight;
  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      textAlign: TextAlign.right,
      style: TextStyle(
        fontSize: fontSize,
        color: WeUITheme.of(context).textTitleColor,
        height: lineHeight,
      ),
    );
  }
}

class PreViewButton extends StatelessWidget {
  PreViewButton({
    this.text = "",
    this.onPressed,
    this.primary = false,
    Key key,
  }) : super(key: key);

  final String text;
  final VoidCallback onPressed;
  final bool primary;

  @override
  Widget build(BuildContext context) {
    final WeUIThemeData theme = WeUITheme.of(context);
    final WeUIDialogThemeData dialogTheme =
        WeUIDialogTheme.of(context) ?? theme.dialogTheme;
    return TouchableHighlight(
      color: Colors.transparent,
      activeColor: dialogTheme.dialogLinkActiveBgColor,
      child: Container(
        height: 50,
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: primary == true
                  ? theme.linkDefaultColor
                  : theme.foregroundHalf,
            ),
          ),
        ),
      ),
      onPressed: onPressed,
    );
  }
}

class PreViewFooter extends StatelessWidget {
  PreViewFooter({this.children = const [], Key key}) : super(key: key);

  final List<PreViewButton> children;

  @override
  Widget build(BuildContext context) {
    final WeUIDialogThemeData dialogTheme =
        WeUIDialogTheme.of(context) ?? WeUITheme.of(context).dialogTheme;
    final List<Widget> buttons = children
        .expand((btn) => [
              Expanded(child: btn),
              Container(
                height: 50,
                width: 1,
                color: dialogTheme.dialogLineColor,
              )
            ])
        .toList();
//    buttons.removeLast();
    return Column(
      children: <Widget>[
        Divider(height: 1, thickness: 1, color: dialogTheme.dialogLineColor),
        Row(
          children: buttons,
        )
      ],
    );
  }
}
