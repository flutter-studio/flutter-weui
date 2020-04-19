import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:smart_color/smart_color.dart';
import 'button_theme.dart';
import 'color.dart';
import 'cell_theme.dart';
import 'dialog_theme.dart';
export 'cell_theme.dart';
export 'button_theme.dart';
export 'dialog_theme.dart';

// 黑暗主题对应颜色
class Dark {
  Dark._();
  static Color WEUI_BG_0 = SmartColor.parse("#191919");
  static Color WEUI_BG_1 = SmartColor.parse("#1f1f1f");
  static Color WEUI_BG_2 = SmartColor.parse("#232323");
  static Color WEUI_BG_3 = SmartColor.parse("#2f2f2f");
  static Color WEUI_BG_4 = SmartColor.parse("#606060");
  static Color WEUI_BG_5 = SmartColor.parse("#2c2c2c");
  static Color WEUI_FG_0 = SmartColor.parse("rgba(255, 255, 255, 0.8)");
  static Color WEUI_FG_HALF = SmartColor.parse("rgba(255, 255, 255, 0.6)");
  static Color WEUI_FG_1 = SmartColor.parse("rgba(255, 255, 255, 0.5)");
  static Color WEUI_FG_2 = SmartColor.parse("rgba(255, 255, 255, 0.3)");
  static Color WEUI_FG_3 = SmartColor.parse("rgba(255, 255, 255, 0.05)");
  static Color WEUI_RED = SmartColor.parse("#fa5151");
  static Color WEUI_ORANGE = SmartColor.parse("#c87d2f");
  static Color WEUI_YELLOW = SmartColor.parse("#cc9c00");
  static Color WEUI_GREEN = SmartColor.parse("#74a800");
  static Color WEUI_LIGHTGREEN = SmartColor.parse("#28b561");
  static Color WEUI_BRAND = SmartColor.parse("#07c160");
  static Color WEUI_BLUE = SmartColor.parse("#10aeff");
  static Color WEUI_INDIGO = SmartColor.parse("#1196ff");
  static Color WEUI_PURPLE = SmartColor.parse("#8183ff");
  static Color WEUI_WHITE = SmartColor.parse("rgba(255, 255, 255, 0.8)");
  static Color WEUI_LINK = SmartColor.parse("#7d90a9");
  static Color WEUI_TEXTGREEN = SmartColor.parse("#259c5c");
  static Color WEUI_FG = SmartColor.parseCssColor(CSSColor.white);
  static Color WEUI_BG = SmartColor.parseCssColor(CSSColor.black);
  static Color WEUI_TAG_TEXT_ORANGE =
      SmartColor.parse("rgba(250, 157, 59, 0.6)");
  static Color WEUI_TAG_BACKGROUND_ORANGE =
      SmartColor.parse("rgba(250, 157, 59, 0.1)");
  static Color WEUI_TAG_TEXT_GREEN = SmartColor.parse("rgba(6, 174, 86, 0.6)");
  static Color WEUI_TAG_BACKGROUND_GREEN =
      SmartColor.parse("rgba(6, 174, 86, 0.1)");
  static Color WEUI_TAG_TEXT_BLUE = SmartColor.parse("rgba(16, 174, 255, 0.6)");
  static Color WEUI_TAG_BACKGROUND_BLUE =
      SmartColor.parse("rgba(16, 174, 255, 0.1)");
  static Color WEUI_TAG_TEXT_BLACK =
      SmartColor.parse("rgba(255, 255, 255, 0.5)");
  static Color WEUI_TAG_BACKGROUND_BLACK =
      SmartColor.parse("rgba(255, 255, 255, 0.05)");
}

// 明亮主题对应颜色
class Light {
  Light._();
  static Color WEUI_BG_0 = SmartColor.parse("#ededed");
  static Color WEUI_BG_1 = SmartColor.parse("#f7f7f7");
  static Color WEUI_BG_2 = SmartColor.parse("#fff");
  static Color WEUI_BG_3 = SmartColor.parse("#f7f7f7");
  static Color WEUI_BG_4 = SmartColor.parse("#4c4c4c");
  static Color WEUI_BG_5 = SmartColor.parse("#fff");
  static Color WEUI_FG_0 = SmartColor.parse("rgba(0, 0, 0, 0.9)");
  static Color WEUI_FG_HALF = SmartColor.parse("rgba(0, 0, 0, 0.9)");
  static Color WEUI_FG_1 = SmartColor.parse("rgba(0, 0, 0, 0.5)");
  static Color WEUI_FG_2 = SmartColor.parse("rgba(0, 0, 0, 0.3)");
  static Color WEUI_FG_3 = SmartColor.parse("rgba(0, 0, 0, 0.1)");
  static Color WEUI_RED = SmartColor.parse("#fa5151");
  static Color WEUI_ORANGE = SmartColor.parse("#fa9d3b");
  static Color WEUI_YELLOW = SmartColor.parse("#ffc300");
  static Color WEUI_GREEN = SmartColor.parse("#91d300");
  static Color WEUI_LIGHTGREEN = SmartColor.parse("#95ec69");
  static Color WEUI_BRAND = SmartColor.parse("#07c160");
  static Color WEUI_BLUE = SmartColor.parse("#10aeff");
  static Color WEUI_INDIGO = SmartColor.parse("#1485ee");
  static Color WEUI_PURPLE = SmartColor.parse("#6467f0");
  static Color WEUI_WHITE = SmartColor.parse("#fff");
  static Color WEUI_LINK = SmartColor.parse("#576b95");
  static Color WEUI_TEXTGREEN = SmartColor.parse("#06ae56");
  static Color WEUI_FG = SmartColor.parseCssColor(CSSColor.black);
  static Color WEUI_BG = SmartColor.parseCssColor(CSSColor.white);
  static Color WEUI_TAG_TEXT_ORANGE = SmartColor.parse("#fa9d3b");
  static Color WEUI_TAG_BACKGROUND_ORANGE =
      SmartColor.parse("rgba(250, 157, 59, 0.1)");
  static Color WEUI_TAG_TEXT_GREEN = SmartColor.parse("#06ae56");
  static Color WEUI_TAG_BACKGROUND_GREEN =
      SmartColor.parse("rgba(6, 174, 86, 0.1)");
  static Color WEUI_TAG_TEXT_BLUE = SmartColor.parse("#10aeff");
  static Color WEUI_TAG_BACKGROUND_BLUE =
      SmartColor.parse("rgba(16, 174, 255, 0.1)");
  static Color WEUI_TAG_TEXT_BLACK = SmartColor.parse("rgba(0, 0, 0, 0.5)");
  static Color WEUI_TAG_BACKGROUND_BLACK =
      SmartColor.parse("rgba(0, 0, 0, 0.05)");
}

class WeUIApp extends StatelessWidget {
  WeUIApp({
    @required this.child,
    this.theme,
  }) : assert(child != null);
  final Widget child;
  final WeUIThemeData theme;
  @override
  Widget build(BuildContext context) {
    return WeUITheme(
      child: child,
      data: theme ?? WeUIThemeData.light(),
    );
  }
}

class WeUITheme extends StatelessWidget {
  WeUITheme({
    Key key,
    @required this.data,
    @required this.child,
  })  : assert(data != null),
        assert(child != null),
        super(key: key);
  final WeUIThemeData data;
  final Widget child;

  static WeUIThemeData of(BuildContext context) {
    final _InheritedTheme inheritedTheme =
        context.inheritFromWidgetOfExactType(_InheritedTheme);
    return inheritedTheme?.theme?.data ?? WeUIThemeData.light();
  }

  @override
  Widget build(BuildContext context) {
    return _InheritedTheme(
      theme: this,
      child: child,
    );
  }
}

@immutable
class WeUIThemeData extends Diagnosticable {
  factory WeUIThemeData({
    Color primaryColor,
    Color warnColor,
    Color activeMaskBlack,
    Color bgDefaultColor,
    Color bgPrimaryColor,
    Color bgActiveColor,
    Color lineLightColor,
    Color lineDarkColor,
    Color textTitleColor,
    Color textDescColor,
    Color textWarnColor,
    Brightness brightness,
    Color textTipsColor,
    Color linkDefaultColor,
    WeUIButtonThemeData buttonTheme,
    Color loadingColor,
    WeUICellThemeData cellTheme,
    WeUIDialogThemeData dialogTheme,
    Color foregroundHalf,
    Color toastBgColor,
  }) {
    brightness ??= Brightness.light;
    textTipsColor ??= weuiTextColorTips(brightness);
    linkDefaultColor ??= weuiLinkColorDefault(brightness);
    primaryColor ??= weuiColorPrimary(brightness);
    warnColor ??= weuiColorWarn(brightness);
    activeMaskBlack ??= weuiActiveMaskBlack(brightness);
    bgDefaultColor ??= weuiBgColorDefault(brightness);
    bgPrimaryColor ??= weuiBgColorPrimary(brightness);
    bgActiveColor ??= weuiBgColorActive(brightness);
    lineDarkColor ??= weuiLineColorDark(brightness);
    lineLightColor ??= weuiLineColorLight(brightness);
    textTitleColor ??= weuiTextColorTitle(brightness);
    textDescColor ??= weuiTextColorDesc(brightness);
    textWarnColor ??= weuiTextColorWarn(brightness);
    buttonTheme ??= WeUIButtonThemeData(brightness: brightness);
    loadingColor ??= weuiLoadingColor(brightness);
    cellTheme ??= WeUICellThemeData(brightness: brightness);
    dialogTheme ??= WeUIDialogThemeData(brightness: brightness);
    foregroundHalf ??= weuiFgHalf(brightness);
    toastBgColor ??= weuiToastBgColor(brightness);
    return WeUIThemeData.raw(
      brightness: brightness,
      textTipsColor: textTipsColor,
      linkDefaultColor: linkDefaultColor,
      primaryColor: primaryColor,
      warnColor: warnColor,
      activeMaskBlack: activeMaskBlack,
      bgDefaultColor: bgDefaultColor,
      bgPrimaryColor: bgPrimaryColor,
      bgActiveColor: bgActiveColor,
      lineDarkColor: lineDarkColor,
      lineLightColor: lineLightColor,
      textDescColor: textDescColor,
      textTitleColor: textTitleColor,
      textWarnColor: textWarnColor,
      buttonTheme: buttonTheme,
      loadingColor: loadingColor,
      cellTheme: cellTheme,
      dialogTheme: dialogTheme,
      foregroundHalf: foregroundHalf,
      toastBgColor: toastBgColor,
    );
  }

  WeUIThemeData copyWith({
    Color primaryColor,
    Color warnColor,
    Color activeMaskBlack,
    Color bgDefaultColor,
    Color bgPrimaryColor,
    Color bgActiveColor,
    Color lineLightColor,
    Color lineDarkColor,
    Color textTitleColor,
    Color textDescColor,
    Color textWarnColor,
    Brightness brightness,
    Color textTipsColor,
    Color linkDefaultColor,
    WeUIButtonThemeData buttonTheme,
    Color loadingColor,
    WeUICellThemeData cellTheme,
    WeUIDialogThemeData dialogTheme,
    Color foregroundHalf,
    Color toastBgColor,
  }) {
    return WeUIThemeData.raw(
      brightness: brightness ?? this.brightness,
      textTipsColor: textTipsColor ?? this.textTipsColor,
      linkDefaultColor: linkDefaultColor ?? this.linkDefaultColor,
      primaryColor: primaryColor ?? primaryColor,
      warnColor: warnColor ?? this.warnColor,
      activeMaskBlack: activeMaskBlack ?? this.activeMaskBlack,
      bgDefaultColor: bgDefaultColor ?? this.bgDefaultColor,
      bgPrimaryColor: bgPrimaryColor ?? this.bgPrimaryColor,
      bgActiveColor: bgActiveColor ?? this.bgActiveColor,
      lineDarkColor: lineDarkColor ?? this.lineDarkColor,
      lineLightColor: lineLightColor ?? this.lineLightColor,
      textDescColor: textDescColor ?? this.textDescColor,
      textTitleColor: textTitleColor ?? this.textTitleColor,
      textWarnColor: textWarnColor ?? this.textWarnColor,
      buttonTheme: buttonTheme ?? this.buttonTheme,
      loadingColor: loadingColor ?? this.loadingColor,
      cellTheme: cellTheme,
      dialogTheme: dialogTheme,
      foregroundHalf: foregroundHalf,
      toastBgColor: toastBgColor,
    );
  }

  const WeUIThemeData.raw({
    @required this.primaryColor,
    @required this.warnColor,
    @required this.activeMaskBlack,
    @required this.bgDefaultColor,
    @required this.bgPrimaryColor,
    @required this.bgActiveColor,
    @required this.lineLightColor,
    @required this.lineDarkColor,
    @required this.textTitleColor,
    @required this.textDescColor,
    @required this.textWarnColor,
    @required this.brightness,
    @required this.textTipsColor,
    @required this.linkDefaultColor,
    @required this.buttonTheme,
    @required this.loadingColor,
    @required this.cellTheme,
    @required this.dialogTheme,
    @required this.foregroundHalf,
    @required this.toastBgColor,
  });
  final Color primaryColor;
  final Color warnColor;
  final Brightness brightness;
  final Color textTipsColor;
  final Color linkDefaultColor;
  final Color activeMaskBlack;
  final Color bgDefaultColor;
  final Color bgPrimaryColor;
  final Color bgActiveColor;
  final Color lineLightColor;
  final Color lineDarkColor;
  final Color textTitleColor;
  final Color textDescColor;
  final Color textWarnColor;
  final WeUIButtonThemeData buttonTheme;
  final Color loadingColor;
  final WeUICellThemeData cellTheme;
  final WeUIDialogThemeData dialogTheme;
  final Color foregroundHalf;
  final Color toastBgColor;

  factory WeUIThemeData.light() => WeUIThemeData(brightness: Brightness.light);

  factory WeUIThemeData.dark() => WeUIThemeData(brightness: Brightness.dark);
}

class _InheritedTheme extends InheritedWidget {
  const _InheritedTheme({
    Key key,
    @required this.theme,
    @required Widget child,
  })  : assert(theme != null),
        super(key: key, child: child);

  final WeUITheme theme;

  @override
  bool updateShouldNotify(_InheritedTheme old) => theme.data != old.theme.data;
}
