import 'package:flutter/material.dart';
import 'package:flutter_weui/src/base/theme.dart';
import 'package:smart_color/smart_color.dart';
import 'color.dart';

typedef ColorFunction = Color Function(Brightness);

double weuiNavBarHeight = 56;
double weuiTabBarHeight = 60;

double weuiProgressHeight = 3;
Color weuiProgressBg(Brightness brightness) => weuiBgColorDefault(brightness);
Color weuiProgressColor(Brightness brightness) => weuiColorPrimary(brightness);

double weuiMsgPaddingTop = 48;
double weuiMsgTitleGap = 16;

Color weuiGridBorderColor(Brightness brightness) =>
    weuiLineColorLight(brightness);
double weuiGridFontSize = 14;
double weuiGridIconSize = 28;
double weuiGridColumnCount = 3;

double weuiDialogGapWidth = 24;
Color weuiDialogLinkActiveBc(Brightness brightness) =>
    weuiBgColorActive(brightness);
ColorFunction weuiDialogLinkColor = weuiLinkColorDefault;
Color weuiDialogLineColor(Brightness brightness) => themeColor(
    brightness,
    SmartColor.parse("rgba(0, 0, 0, 0.1)"),
    SmartColor.parse("rgba(255, 255, 255, 0.1)"));
Color weuiDialogBackgroundColor(Brightness brightness) =>
    themeColor(brightness, Light.WEUI_BG_2, Dark.WEUI_BG_2);

ColorFunction weuiCellBg = weuiDialogBackgroundColor;
ColorFunction weuiCellBorderColor = weuiLineColorLight;
ColorFunction weuiCellActiveBg = weuiBgColorActive;
double weuiCellGapV = 16;
double weuiCellGapH = 16;
double weuiCellInnerGapH = 16;
double weuiCellHeight = 56;
double weuiCellFontSize = 17;
double weuiCellTipsFontSize = 14;
double weuiCellLabelWidth = 105;

double weuiCellLineHeight =
    (weuiCellHeight - 2 * weuiCellGapV) / weuiCellFontSize; // 高度减去上下padding的行高
double weuiCellsMarginTop = 8;

// weui switch
double weuiSwitchHeight = 32;

// weui uploader
double weuiUploaderFileSpacing = 8;
double weuiUploaderSize = 96;
double weuiUploaderBorderWidth = 1;

double weuiBtnWidth = 184;
double weuiBtnHeight = 40;
double weuiBtnFontSize = 17;
double weuiBtnBorderRadius = 4;
double weuiBtnDefaultGap = 16;

double weuiBtnMiniFontSize = 16;
double weuiBtnMiniHeight = 32;

double weuiBtnCellHeight = 56;
double weuiBtnCellGap = 16;
double weuiBtnCellLineHeight =
    (weuiBtnCellHeight - 2 * weuiBtnCellGap) / weuiBtnFontSize;

Color weuiBtnFontColor(Brightness brightness) => Colors.white;
Color weuiBtnDisabledFontColor(Brightness brightness) => themeColor(
    brightness,
    SmartColor.parse("rgba(0, 0, 0, 0.2)"),
    SmartColor.parse("rgba(255, 255, 255, 0.2)"));
ColorFunction weuiBtnDisabledBg = weuiBtnDefaultBg;

// // default
Color weuiBtnDefaultColor(Brightness brightness) => themeColor(brightness,
    SmartColor.parse("#06ae56"), SmartColor.parse("rgba(255, 255, 255, 0.8)"));
// ColorFunction weuiBtnDefaultDisabledFontColor=weuiBtnDisabledFontColor;
Color weuiBtnDefaultBg(Brightness brightness) => themeColor(brightness,
    SmartColor.parse("#f2f2f2"), SmartColor.parse("rgba(255, 255, 255, 0.08)"));
Color weuiBtnDefaultActiveBg(Brightness brightness) => themeColor(
    brightness,
    Color.alphaBlend(
        SmartColor.parse("rgba(0, 0, 0, 0.05)"), SmartColor.parse("#f2f2f2")),
    Color.alphaBlend(SmartColor.parse("rgba(255, 255, 255, 0.05)"),
        SmartColor.parse("rgba(255, 255, 255, 0.08)")));
ColorFunction weuiBtnDefaultDisabledBg = weuiBtnDisabledBg;

// primary
ColorFunction weuiBtnPrimaryFontColor = weuiBtnFontColor;
ColorFunction weuiBtnPrimaryDisabledFontColor = weuiBtnDisabledFontColor;
ColorFunction weuiBtnPrimaryBg = weuiColorPrimary;
Color weuiBtnPrimaryActiveBg(Brightness brightness) =>
    themeColor(brightness, Light.WEUI_TAG_TEXT_GREEN, Dark.WEUI_TAG_TEXT_GREEN);
ColorFunction weuiBtnPrimaryDisabledBg = weuiBtnDisabledBg;

// warn
ColorFunction weuiBtnWarnFontColor = weuiColorWarn;
ColorFunction weuiBtnWarnDisabledFontColor = weuiBtnDisabledFontColor;
ColorFunction weuiBtnWarnBg = weuiBtnDefaultBg;
ColorFunction weuiBtnWarnActiveBg = weuiBtnDefaultActiveBg;
ColorFunction weuiBtnwarnDisabledBg = weuiBtnDefaultDisabledBg;
