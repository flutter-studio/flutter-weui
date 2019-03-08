import 'package:flutter/material.dart';
import 'package:flutter_weui/flutter_weui.dart';
class PickerExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Picker"),),
      body: Center(
        child: Column(
          children: <Widget>[
            FlatButton(onPressed: (){
              Picker.show(context,data: ["item1","item2","item2","item4"]);
            }, child: Text("Picker"))
          ],
        ),
      ),
    );
  }
}
