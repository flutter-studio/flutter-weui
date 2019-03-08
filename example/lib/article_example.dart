import 'package:flutter/material.dart';
import 'package:flutter_weui/flutter_weui.dart';
class ArticleExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Article"),),
      body: Container(
        child:  Article(
          children: <Widget>[
            H1(
              text: "大标题",
            ),
            Section(
              children: <Widget>[
                H2(text: "章标题"),
                Section(
                  children: <Widget>[
                    H3(
                      text: "节标题",
                    ),
                    P(
                      text:
                      '''Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo''',
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
