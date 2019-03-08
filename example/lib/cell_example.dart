import 'package:flutter/material.dart';
import 'package:flutter_weui/flutter_weui.dart';
class CellExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Cell"),),
      body: Cells(
        children: <Widget>[
          CellInput(
            keyBoardType: KeyBoardType.number,
            label: "number",
          ),
          CellInput(
            keyBoardType: KeyBoardType.text,
            label: "text",
          ),
          CellInput(
            keyBoardType: KeyBoardType.password,
            label: "password",
          ),
          CellSelect(
            options: ["1", "2", "3"],
            initialIndex: 2,
            onChanged: (value) {
              print(value);
            },
          ),
          Cell(
            title: "Cell",
            banner: Icon(
              Icons.arrow_back,
              size: 20,
            ),
            access: true,
            secondaryText: "说明文字",
            onPressed: () {
              ActionSheet.show(
                  context,
                  data: ["1", "3", "sdfs"],
                  onPress: (details) {
                    print(details.toString());
                  });
            },
            radio: true,
            checkBox: true,
          ),
        ],
      ),
    );
  }
}
