import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

enum LoadType {
  loading,
  noData,
  dot,
}

class LoadMore extends StatelessWidget {
  LoadMore({Key key, this.type = LoadType.noData}) : super(key: key);

  final LoadType type;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          width: screenWidth * 0.65,
          margin: const EdgeInsets.symmetric(vertical: 15),
          child: Row(
            children: <Widget>[
              Expanded(
                  child: Divider(
                height: 1,
              )),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Row(
                  children: <Widget>[
                    Offstage(
                      child: CupertinoActivityIndicator(),
                      offstage: type != LoadType.loading,
                    ),
                    type == LoadType.dot
                        ? Container(
                            width: 4,
                            height: 4,
                            child: Text(""),
                            decoration: BoxDecoration(color: Color(0xFFE5E5E5), borderRadius: BorderRadius.all(Radius.circular(2))),
                          )
                        : Text(
                            type == LoadType.loading ? "正在加载" : "暂无数据",
                            style: TextStyle(fontSize: 14),
                          ),
                  ],
                ),
              ),
              Expanded(
                  child: Divider(
                height: 1,
              )),
            ],
          ),
        )
      ],
    );
  }
}
