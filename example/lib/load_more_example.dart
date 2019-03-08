import 'package:flutter/material.dart';
import 'package:flutter_weui/flutter_weui.dart';
class LoadMoreExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("LoadMore"),),
      body: Cells(
        children: <Widget>[
          LoadMore(
            type: LoadType.loading,
          ),
          LoadMore(
            type: LoadType.noData,
          ),
          LoadMore(
            type: LoadType.dot,
          ),
        ],
      ),
    );
  }
}
