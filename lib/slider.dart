import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WSlider extends StatefulWidget {
  WSlider({Key key, this.onChanged, this.min = 0, this.max = 10, this.step = 0, this.activeColor = const Color(0xFF1AAD19), this.showValue = false,this.defaultValue})
      : super(key: key);

  final ValueChanged<double> onChanged;
  final double min;
  final double max;
  final int step; //步进值
  final Color activeColor;
  final bool showValue;
  final double defaultValue;
  @override
  _SliderState createState() => _SliderState();
}

class _SliderState extends State<WSlider> {
  double value ;

  handleChanged(newValue) {
    if (widget.onChanged != null) widget.onChanged(newValue);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    value = widget.defaultValue??widget.min;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Expanded(
          child: CupertinoSlider(
            value: value,
            min: widget.min,
            max: widget.max,
            divisions: widget.step <= 0 ? null : (widget.max - widget.min) ~/ widget.step,
            activeColor: widget.activeColor,
            onChanged: (double newValue) {
              setState(() {
                value = newValue;
              });
              handleChanged(newValue);
            },
          ),
        ),
        Offstage(
          child: Text(
            value.toStringAsFixed(2),
            style: TextStyle(fontSize: 14, color: Color(0xFF808080)),
          ),
          offstage: widget.showValue != true,
        )
      ],
    );
  }
}
