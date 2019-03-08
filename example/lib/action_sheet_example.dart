import 'package:flutter/material.dart';
import 'package:flutter_weui/flutter_weui.dart';
class ActionSheetExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ActionSheet"),),
      body: Center(
        child: FlatButton(onPressed: (){
          ActionSheet.show(context,data:["Item1","Item2","Item3"]);
        }, child: Text("ActionSheet")),
      ),
    );
  }
}
