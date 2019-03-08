import 'package:flutter/material.dart';
import 'package:flutter_weui/flutter_weui.dart';

class PanelExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Panel"),
      ),
      body: Panel(
          title: "Panel Title",
          footer: true,
          onFooterPressed: () {},
          body: Cells(
            children: <Widget>[
              MediaBox(
                title: "Title",
                desc: "desc",
              ),
              MediaBox(
                thumb: Container(
                  width: 24,
                  height: 24,
                  color: Colors.red,
                  child: Text("A"),
                ),
                title: "Title",
                desc: "desc",
              ),
              MediaBox(
                title: "Title",
                desc: "desc",
                info: Info(
                  children: <Widget>[
                    Meta(
                      text: "文字来源",
                    ),
                    Meta(
                      text: "文本来源",
                    ),
                    MetaExtra(
                      text: "其他信息",
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}
