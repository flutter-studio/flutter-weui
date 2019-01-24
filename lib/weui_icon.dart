import 'package:flutter/material.dart';
import 'package:smart_color/smart_color.dart';

enum WeuiIconType {
  success,
  warn,
  info,
  waiting,
  success_no_circle,
  circle,
  download,
  info_circle,
  cancel,
  search,
}

class WeuiIcon extends StatelessWidget {
  WeuiIcon({Key key, this.type, this.msg, this.color = const Color(0xFF09BB07)}) : super(key: key);

  final WeuiIconType type;
  final bool msg;
  final Color color;
  Map<WeuiIconType, String> iconMap = const {
    WeuiIconType.success: "\u{EA06}",
    WeuiIconType.warn: "\u{EA0B}",
    WeuiIconType.info: "\u{EA03}",
    WeuiIconType.waiting: "\u{EA09}",
    WeuiIconType.success_no_circle: "\u{EA08}",
    WeuiIconType.circle: "\u{EA01}",
    WeuiIconType.download: "\u{EA02}",
    WeuiIconType.info_circle: "\u{EA0C}",
    WeuiIconType.cancel: "\u{EA0D}",
    WeuiIconType.search: "\u{EA0E}",
  };
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(
      iconMap[type],
      style: TextStyle(
        fontSize: msg ? 93 : 23,
        package: "flutter_weui",
        fontFamily: "WeuiIcon",
        color: color,
      ),
    );
  }
}

class SuccessIcon extends StatelessWidget {
  SuccessIcon({Key key, this.msg = true}) : super(key: key);

  final bool msg;
  @override
  Widget build(BuildContext context) {
    return WeuiIcon(
      type: WeuiIconType.success,
      msg: msg,
    );
  }
}

class WarnIcon extends StatelessWidget {
  WarnIcon({Key key, this.primary = true}) : super(key: key);
  final bool primary;
  @override
  Widget build(BuildContext context) {
    return WeuiIcon(
      type: WeuiIconType.warn,
      msg: true,
      color: SmartColor.parse(primary == true ? "FFBE00" : "#F76260"),
    );
  }
}

class InfoIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WeuiIcon(
      type: WeuiIconType.info,
      msg: true,
      color: SmartColor.parse("10AEFF"),
    );
  }
}

class WaitingIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WeuiIcon(
      type: WeuiIconType.waiting,
      msg: true,
      color: SmartColor.parse("10AEFF"),
    );
  }
}
