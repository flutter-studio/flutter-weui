import 'package:flutter/material.dart';
import 'global.dart';

class WeUIButtonTheme extends InheritedWidget {
  static WeUIButtonThemeData of(BuildContext context) {
    final WeUIButtonTheme buttonTheme =
        context.inheritFromWidgetOfExactType(WeUIButtonTheme);
    return buttonTheme?.data;
  }

  WeUIButtonTheme({
    Brightness brightness = Brightness.light,
    double btnWidth = 184,
    double btnHeight = 40,
    double btnFontSize = 17,
    double btnBorderRadius = 4,
    double btnDefaultGap = 16,
    double btnMiniFontSize = 16,
    double btnMiniHeight = 32,
    double btnCellHeight = 56,
    double btnCellGap = 16,
    Color btnFontColor,
    Color btnDisabledFontColor,
    Color btnDisabledBg,
    Color btnDefaultFontColor,
    Color btnDefaultDisabledFontColor,
    Color btnDefaultBg,
    Color btnDefaultActiveBg,
    Color btnDefaultDisabledBg,
    Widget child,
    Key key,
  })  : data = WeUIButtonThemeData(
          btnWidth: btnWidth,
          btnHeight: btnHeight,
          btnFontSize: btnFontSize,
          btnBorderRadius: btnBorderRadius,
          btnDefaultGap: btnDefaultGap,
          btnMiniFontSize: btnMiniFontSize,
          btnMiniHeight: btnMiniHeight,
          btnCellHeight: btnCellHeight,
          btnCellGap: btnCellGap,
          btnFontColor: btnFontColor,
          btnDisabledFontColor: btnDisabledFontColor,
          btnDisabledBg: btnDisabledBg,
          btnDefaultFontColor: btnDefaultFontColor,
          btnDefaultDisabledFontColor: btnDefaultDisabledFontColor,
          btnDefaultBg: btnDefaultBg,
          btnDefaultActiveBg: btnDefaultActiveBg,
          btnDefaultDisabledBg: btnDefaultDisabledBg,
        ),
        super(child: child, key: key);
  final WeUIButtonThemeData data;

  @override
  bool updateShouldNotify(WeUIButtonTheme oldWidget) =>
      this.data != oldWidget.data;
}

const FontWeight dBtnFontWeight = FontWeight.w700;

class WeUIButtonThemeData {
  factory WeUIButtonThemeData({
    Brightness brightness,
    double btnWidth = 184,
    double btnHeight = 40,
    double btnFontSize = 17,
    double btnBorderRadius = 4,
    double btnDefaultGap = 16,
    double btnMiniFontSize = 16,
    double btnMiniHeight = 32,
    double btnCellHeight = 56,
    double btnCellGap = 16,
    Color btnFontColor,
    Color btnDisabledFontColor,
    Color btnDisabledBg,
    Color btnDefaultFontColor,
    Color btnDefaultDisabledFontColor,
    Color btnDefaultBg,
    Color btnDefaultActiveBg,
    Color btnDefaultDisabledBg,
    Color btnPrimaryFontColor,
    Color btnPrimaryDisabledFontColor,
    Color btnPrimaryBg,
    Color btnPrimaryActiveBg,
    Color btnPrimaryDisabledBg,
    Color btnWarnFontColor,
    Color btnWarnDisabledFontColor,
    Color btnWarnBg,
    Color btnWarnActiveBg,
    Color btnwarnDisabledBg,
    FontWeight btnFontWeight,
  }) {
    brightness ??= Brightness.light;
    btnFontColor ??= weuiBtnFontColor(brightness);
    btnDisabledFontColor ??= weuiBtnDisabledFontColor(brightness);
    btnDisabledBg ??= weuiBtnDisabledBg(brightness);
    btnDefaultFontColor ??= weuiBtnDefaultFontColor(brightness);
    btnDefaultDisabledFontColor ??= weuiBtnDefaultDisabledFontColor(brightness);
    btnDefaultBg ??= weuiBtnDefaultDisabledBg(brightness);
    btnDefaultActiveBg ??= weuiBtnDefaultActiveBg(brightness);
    btnDefaultDisabledBg ??= weuiBtnDefaultDisabledBg(brightness);
    btnPrimaryFontColor ??= weuiBtnFontColor(brightness);
    btnPrimaryDisabledFontColor ??= weuiBtnDisabledFontColor(brightness);
    btnPrimaryBg ??= weuiBtnPrimaryBg(brightness);
    btnPrimaryActiveBg ??= weuiBtnPrimaryActiveBg(brightness);
    btnPrimaryDisabledBg ??= weuiBtnPrimaryDisabledBg(brightness);
    btnWarnFontColor ??= weuiBtnWarnFontColor(brightness);
    btnWarnDisabledFontColor ??= weuiBtnDisabledFontColor(brightness);
    btnWarnBg ??= weuiBtnWarnBg(brightness);
    btnWarnActiveBg ??= weuiBtnWarnActiveBg(brightness);
    btnwarnDisabledBg ??= weuiBtnwarnDisabledBg(brightness);
    btnFontWeight ??= dBtnFontWeight;
    return WeUIButtonThemeData.raw(
      btnWidth: btnWidth,
      btnHeight: btnHeight,
      btnFontSize: btnFontSize,
      btnBorderRadius: btnBorderRadius,
      btnDefaultGap: btnDefaultGap,
      btnMiniFontSize: btnMiniFontSize,
      btnMiniHeight: btnMiniHeight,
      btnCellHeight: btnCellHeight,
      btnCellGap: btnCellGap,
      btnFontColor: btnFontColor,
      btnDisabledFontColor: btnDisabledFontColor,
      btnDisabledBg: btnDisabledBg,
      btnDefaultFontColor: btnDefaultFontColor,
      btnDefaultDisabledFontColor: btnDefaultDisabledFontColor,
      btnDefaultBg: btnDefaultBg,
      btnDefaultActiveBg: btnDefaultActiveBg,
      btnDefaultDisabledBg: btnDefaultDisabledBg,
      btnPrimaryFontColor: btnPrimaryFontColor,
      btnPrimaryDisabledFontColor: btnPrimaryDisabledFontColor,
      btnPrimaryBg: btnPrimaryBg,
      btnPrimaryActiveBg: btnPrimaryActiveBg,
      btnPrimaryDisabledBg: btnPrimaryDisabledBg,
      btnWarnFontColor: btnWarnFontColor,
      btnWarnDisabledFontColor: btnWarnDisabledFontColor,
      btnWarnBg: btnWarnBg,
      btnWarnActiveBg: btnWarnActiveBg,
      btnwarnDisabledBg: btnwarnDisabledBg,
      btnFontWeight: btnFontWeight,
    );
  }

  factory WeUIButtonThemeData.light() =>
      WeUIButtonThemeData(brightness: Brightness.light);

  factory WeUIButtonThemeData.dark() =>
      WeUIButtonThemeData(brightness: Brightness.dark);

  const WeUIButtonThemeData.raw({
    @required this.btnWidth,
    @required this.btnHeight,
    @required this.btnFontSize,
    @required this.btnBorderRadius,
    @required this.btnDefaultGap,
    @required this.btnMiniFontSize,
    @required this.btnMiniHeight,
    @required this.btnCellHeight,
    @required this.btnCellGap,
    @required this.btnFontColor,
    @required this.btnDisabledFontColor,
    @required this.btnDisabledBg,
    @required this.btnDefaultFontColor,
    @required this.btnDefaultDisabledFontColor,
    @required this.btnDefaultBg,
    @required this.btnDefaultActiveBg,
    @required this.btnDefaultDisabledBg,
    @required this.btnPrimaryFontColor,
    @required this.btnPrimaryDisabledFontColor,
    @required this.btnPrimaryBg,
    @required this.btnPrimaryActiveBg,
    @required this.btnPrimaryDisabledBg,
    @required this.btnWarnFontColor,
    @required this.btnWarnDisabledFontColor,
    @required this.btnWarnBg,
    @required this.btnWarnActiveBg,
    @required this.btnwarnDisabledBg,
    @required this.btnFontWeight,
  }) : btnCellLineHeight = (btnCellHeight - 2 * btnCellGap) / btnFontSize;
  final double btnWidth;
  final double btnHeight;
  final double btnFontSize;
  final double btnBorderRadius;
  final double btnDefaultGap;
  final double btnMiniFontSize;
  final double btnMiniHeight;
  final double btnCellHeight;
  final double btnCellGap;
  final double btnCellLineHeight;
  final Color btnFontColor;
  final Color btnDisabledFontColor;
  final Color btnDisabledBg;
  final Color btnDefaultFontColor;
  final Color btnDefaultDisabledFontColor;
  final Color btnDefaultBg;
  final Color btnDefaultActiveBg;
  final Color btnDefaultDisabledBg;
  final Color btnPrimaryFontColor;
  final Color btnPrimaryDisabledFontColor;
  final Color btnPrimaryBg;
  final Color btnPrimaryActiveBg;
  final Color btnPrimaryDisabledBg;
  final Color btnWarnFontColor;
  final Color btnWarnDisabledFontColor;
  final Color btnWarnBg;
  final Color btnWarnActiveBg;
  final Color btnwarnDisabledBg;
  final FontWeight btnFontWeight;
}
