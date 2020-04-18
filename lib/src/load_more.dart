import 'package:flutter/material.dart';
import 'loading.dart';
import 'package:flutter_weui/flutter_weui.dart';

enum LoadType {
  loading,
  noData,
  dot,
}
const double dFontSize = 14;

class LoadMore extends StatelessWidget {
  LoadMore({
    Key key,
    this.type = LoadType.noData,
    this.text,
  }) : super(key: key);

  final LoadType type;
  final String text;
  @override
  Widget build(BuildContext context) {
    final WeUIThemeData theme = WeUITheme.of(context);
    final TextStyle baseStyle = TextStyle(
      fontSize: dFontSize,
      color: theme.textTitleColor,
    );
    final line = Expanded(
      child: Divider(
        height: 1,
        color: theme.lineLightColor,
      ),
    );
    List<Widget> child;
    if (this.type == LoadType.loading) {
      child = [
        Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 5),
              child: Loading(
                radius: 9,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 0.3 * dFontSize),
              child: Text(
                text ?? '正在加载',
                style: baseStyle,
              ),
            ),
          ],
        )
      ];
    } else if (this.type == LoadType.noData) {
      child = [
        line,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0.55 * dFontSize, vertical: 0.3 * dFontSize),
          child: Text(
            text ?? '暂无数据',
            style: baseStyle.copyWith(color: theme.textDescColor),
          ),
        ),
        line,
      ];
    } else {
      final Widget dot = Container(
        width: 4,
        height: 4,
        child: Text(""),
        margin: const EdgeInsets.symmetric(horizontal: 0.16 * dFontSize),
        decoration: BoxDecoration(
          color: theme.lineLightColor,
          borderRadius: BorderRadius.all(Radius.circular(2)),
        ),
      );
      child = [line, dot, line];
    }
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: dFontSize * 1.5),
      child: Row(
        children: child,
      ),
    );
  }
}
