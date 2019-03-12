import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class PickerItemDetails {
  PickerItemDetails({this.text, this.index});
  final String text;
  final int index;

  @override
  String toString() {
    return 'PickerItemDetails{text: $text, index: $index}';
  }
}

/// picker组件
class Picker {
  /// 展示picker组件
  static show(BuildContext context, {List<String> data, ValueChanged<PickerItemDetails> onOk, int initialItem = 0}) {
    showModalBottomSheet(
        context: context,
        builder: (_) {
          return _PickerBody(
            data: data,
            initialItem: initialItem,
            onOk: onOk,
          );
        });
  }
}

class DatePicker {
  static show(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (_) {
          return CupertinoDatePicker(
            onDateTimeChanged: (dateTime) {},
            initialDateTime: DateTime.now(),
            mode: CupertinoDatePickerMode.date,
          );
        });
  }
}

class _PickerBody extends StatefulWidget {
  _PickerBody({Key key, this.data, this.initialItem = 0, this.onOk})
      : assert(initialItem >= 0 && initialItem < data.length),
        super(key: key);

  final List<String> data;
  final int initialItem;
  final ValueChanged<PickerItemDetails> onOk;
  @override
  __PickerBodyState createState() => __PickerBodyState();
}

class __PickerBodyState extends State<_PickerBody> {
  FixedExtentScrollController scrollController;
  PickerItemDetails itemDetails;
  @override
  void initState() {
    super.initState();
    scrollController = FixedExtentScrollController(initialItem: widget.initialItem);
    itemDetails = PickerItemDetails(index: widget.initialItem, text: widget.data.elementAt(widget.initialItem));
  }

  @override
  void dispose() {
    scrollController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double height = (widget.data.length + 4) * 34.toDouble();
    return SizedBox(
      height: height > 300 ? 300 : height,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          _PickerHeader(
            onCancel: () => Navigator.of(context).pop(),
            onOk: () {
              if (widget.onOk != null) widget.onOk(itemDetails);
              Navigator.of(context).pop();
            },
          ),
          Expanded(
              child: CupertinoPicker(
            backgroundColor: Colors.white,
            itemExtent: 34,
            diameterRatio: 10000000,
            scrollController: scrollController,
            onSelectedItemChanged: (index) {
              itemDetails = PickerItemDetails(index: index, text: widget.data.elementAt(index));
            },
            children: widget.data
                .map((text) => _PickerItem(
                      text: text,
                    ))
                .toList(),
          ))
        ],
      ),
    );
  }
}

class _PickerHeader extends StatelessWidget {
  _PickerHeader({Key key, @required this.onOk, @required this.onCancel}) : super(key: key);

  /// 确定按钮触发
  final VoidCallback onOk;

  /// 取消按钮触发
  final VoidCallback onCancel;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 9, horizontal: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(
            width: 1,
            color: Color(0xFFE5E5E5),
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          CupertinoButton(
              child: Text(
                "取消",
                style: TextStyle(
                  fontSize: 17,
                  color: Color(0xFF888888),
                ),
              ),
              padding: const EdgeInsets.all(0),
              minSize: 17,
              onPressed: onCancel),
          CupertinoButton(
              child: Text(
                "确定",
                style: TextStyle(fontSize: 17, color: Color(0xFF1AAD19)),
              ),
              minSize: 17,
              padding: const EdgeInsets.all(0),
              onPressed: onOk),
        ],
      ),
    );
  }
}

class _PickerItem extends StatelessWidget {
  _PickerItem({Key key, this.text = ""}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 34,
      child: Center(
          child: Text(
        text,
        style: TextStyle(fontSize: 17),
      )),
    );
  }
}
