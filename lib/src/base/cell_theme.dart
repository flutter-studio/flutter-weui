import 'package:flutter/material.dart';
import 'global.dart';

var a = ButtonTheme;

class WeUICellTheme extends InheritedWidget {
  WeUICellTheme({
    @required Widget child,
    Brightness brightness,
    Color cellBg,
    Color cellBorderColor,
    Color cellActiveBg,
    double cellGapV = 16,
    double cellGapH = 16,
    double cellInnerGapH = 16,
    double cellHeight = 56,
    double cellFontSize = 17,
    double cellTipsFontSize = 14,
    double cellLabelWidth = 105,
    double cellsMarginTop = 8,
    Key key,
  })  : data = WeUICellThemeData(
          brightness: brightness,
          cellBg: cellBg,
          cellBorderColor: cellBorderColor,
          cellActiveBg: cellActiveBg,
          cellGapV: cellGapV,
          cellGapH: cellGapH,
          cellInnerGapH: cellInnerGapH,
          cellHeight: cellHeight,
          cellFontSize: cellFontSize,
          cellTipsFontSize: cellTipsFontSize,
          cellLabelWidth: cellLabelWidth,
          cellsMarginTop: cellsMarginTop,
        ),
        super(
          child: child,
          key: key,
        );
  final WeUICellThemeData data;

  static WeUICellThemeData of(BuildContext context) {
    final WeUICellTheme theme =
        context.inheritFromWidgetOfExactType(WeUICellTheme);
    return theme?.data;
  }

  @override
  bool updateShouldNotify(WeUICellTheme oldWidget) => data != oldWidget.data;
}

class WeUICellThemeData {
  factory WeUICellThemeData({
    Brightness brightness,
    Color cellBg,
    Color cellBorderColor,
    Color cellActiveBg,
    double cellGapV = 16,
    double cellGapH = 16,
    double cellInnerGapH = 16,
    double cellHeight = 56,
    double cellFontSize = 17,
    double cellTipsFontSize = 14,
    double cellLabelWidth = 105,
    double cellsMarginTop = 8,
  }) {
    brightness ??= Brightness.light;
    cellBg ??= weuiCellBg(brightness);
    cellBorderColor = weuiCellBorderColor(brightness);
    cellActiveBg = weuiCellActiveBg(brightness);
    return WeUICellThemeData.raw(
      cellBg: cellBg,
      cellBorderColor: cellBorderColor,
      cellActiveBg: cellActiveBg,
      cellGapV: cellGapV,
      cellGapH: cellGapH,
      cellInnerGapH: cellInnerGapH,
      cellHeight: cellHeight,
      cellFontSize: cellFontSize,
      cellTipsFontSize: cellTipsFontSize,
      cellLabelWidth: cellLabelWidth,
      cellsMarginTop: cellsMarginTop,
    );
  }

  factory WeUICellThemeData.light() =>
      WeUICellThemeData(brightness: Brightness.light);
  factory WeUICellThemeData.dark() =>
      WeUICellThemeData(brightness: Brightness.dark);

  const WeUICellThemeData.raw({
    @required this.cellBg,
    @required this.cellBorderColor,
    @required this.cellActiveBg,
    @required this.cellGapV,
    @required this.cellGapH,
    @required this.cellInnerGapH,
    @required this.cellHeight,
    @required this.cellFontSize,
    @required this.cellTipsFontSize,
    @required this.cellLabelWidth,
    @required this.cellsMarginTop,
  }) : cellLineHeight = (cellHeight - 2 * cellGapV) / cellFontSize;
  final Color cellBg;
  final Color cellBorderColor;
  final Color cellActiveBg;
  final double cellGapV;
  final double cellGapH;
  final double cellInnerGapH;
  final double cellHeight;
  final double cellFontSize;
  final double cellTipsFontSize;
  final double cellLabelWidth;
  final double cellsMarginTop;
  final double cellLineHeight;
}
