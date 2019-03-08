import 'package:flutter/material.dart';
import 'package:flutter_weui/flutter_weui.dart';

class SliderExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Slider"),
      ),
      body: Center(
        child:Column(
          children: <Widget>[
            WSlider(),
            WSlider(showValue: true,)
          ],
        ),
      ),
    );
  }
}
