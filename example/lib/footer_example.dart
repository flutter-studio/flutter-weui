import 'package:flutter/material.dart';
import 'package:flutter_weui/flutter_weui.dart';

class FooterExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Footer"),
      ),
      body: Container(
          padding: const EdgeInsets.only(bottom: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Footer(
                text: "南京某某智能科技有限公司",
                links: [Link(text: "友情链接",onPressed: (){}), Link(text: "公司邮箱",onPressed: (){})],
              )
            ],
          )),
    );
  }
}
