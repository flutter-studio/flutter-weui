import 'package:flutter/material.dart';
import 'global.dart';

class WeUIDialogTheme extends InheritedWidget {
  WeUIDialogTheme({
    Brightness brightness,
    Color dialogBackgroundColor,
    Color dialogLineColor,
    Color dialogLinkColor,
    Color dialogLinkActiveBgColor,
    double dialogGapWidth = 24,
    @required Widget child,
    Key key,
  })  : data = WeUIDialogThemeData(
          brightness: brightness,
          dialogLinkColor: dialogLinkColor,
          dialogBackgroundColor: dialogBackgroundColor,
          dialogGapWidth: dialogGapWidth,
          dialogLineColor: dialogLineColor,
          dialogLinkActiveBgColor: dialogLinkActiveBgColor,
        ),
        super(child: child, key: key);
  final WeUIDialogThemeData data;

  static WeUIDialogThemeData of(BuildContext context) {
    final WeUIDialogTheme theme =
        context.inheritFromWidgetOfExactType(WeUIDialogTheme);
    return theme?.data;
  }

  @override
  bool updateShouldNotify(WeUIDialogTheme oldWidget) => data != oldWidget.data;
}

class WeUIDialogThemeData {
  factory WeUIDialogThemeData({
    Brightness brightness,
    Color dialogBackgroundColor,
    Color dialogLineColor,
    Color dialogLinkColor,
    Color dialogLinkActiveBgColor,
    double dialogGapWidth = 24,
  }) {
    brightness ??= Brightness.light;
    dialogLinkColor ??= weuiDialogLinkColor(brightness);
    dialogBackgroundColor ??= weuiDialogBackgroundColor(brightness);
    dialogLineColor ??= weuiDialogLineColor(brightness);
    dialogLinkActiveBgColor ??= weuiDialogLinkActiveBc(brightness);
    return WeUIDialogThemeData.raw(
      dialogLinkColor: dialogLinkColor,
      dialogBackgroundColor: dialogBackgroundColor,
      dialogGapWidth: dialogGapWidth,
      dialogLineColor: dialogLineColor,
      dialogLinkActiveBgColor: dialogLinkActiveBgColor,
    );
  }

  factory WeUIDialogThemeData.light() =>
      WeUIDialogThemeData(brightness: Brightness.light);
  factory WeUIDialogThemeData.dark() =>
      WeUIDialogThemeData(brightness: Brightness.dark);

  final Color dialogBackgroundColor;
  final Color dialogLineColor;
  final Color dialogLinkColor;
  final Color dialogLinkActiveBgColor;
  final double dialogGapWidth;

  const WeUIDialogThemeData.raw(
      {this.dialogLineColor,
      this.dialogGapWidth,
      this.dialogBackgroundColor,
      this.dialogLinkActiveBgColor,
      this.dialogLinkColor});
}
