import 'package:flutter/material.dart';
import 'package:flutter_weui/flutter_weui.dart';
class DialogExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dialog"),),
      body: Center(
        child: Column(
          children: <Widget>[
            FlatButton(onPressed: (){
              WDialog.show(context,title: "Title",content: "Context",actions: [
                DialogActions(text: "取消"),
                DialogActions(text: "确定")
              ]);
            }, child: Text("Dialog_Android")),
            FlatButton(onPressed: (){
              WDialog.show(context,title: "Title",content: "Context",actions: [
                DialogActions(text: "取消"),
                DialogActions(text: "确定")
              ],platform: TargetPlatform.iOS);
            }, child: Text("Dialog_Ios"))
          ],
        ),
      ),
    );
  }
}
