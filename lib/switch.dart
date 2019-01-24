import 'package:flutter/cupertino.dart';

class WSwitch extends StatefulWidget {
  const WSwitch({Key key, @required this.onChanged, this.activeColor = const Color(0xFF1AAD19)}) : super(key: key);
  final Function onChanged;
  final Color activeColor;
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Switch();
  }
}

class _Switch extends State<WSwitch> {
  bool _isOff = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: CupertinoSwitch(
        activeColor: widget.activeColor,
        value: _isOff,
        onChanged: (value) {
          setState(() {
            _isOff = value;
          });
          if (widget.onChanged != null) widget.onChanged(value);
        },
      ),
      onTap: () {
        setState(() {
          _isOff = !_isOff;
        });
      },
    );
  }
}
