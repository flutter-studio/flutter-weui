import 'package:flutter/material.dart';
import 'package:flutter_weui/flutter_weui.dart';

class ButtonExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Button"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(5),
        child: ListView(
          children: <Widget>[
            Button(),
            Button(type: ButtonType.warn),
            Button(type: ButtonType.primay),
            Button(loading: true),
            Button(disabled: true),
            Button(text: "按钮"),
          ],
        ),
      ),
    );
  }
}
