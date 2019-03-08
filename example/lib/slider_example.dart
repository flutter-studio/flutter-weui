import 'package:flutter/material.dart';
import 'package:flutter_weui/flutter_weui.dart';

class SliderExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Slider、Switch、Toast、Touchable"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            WSlider(
              onChanged: (value) {},
            ),
            WSlider(
              showValue: true,
              onChanged: (value) {},
            ),
            WSwitch(
              onChanged: (value) {},
            ),
            FlatButton(
                onPressed: () {
                  Toast.success(context, "success");
                },
                child: Text("Toast_success")),
            FlatButton(
                onPressed: () {
                  Toast.loading(context, "loading");
                  Future.delayed(const Duration(seconds: 1), () {
                    Toast.close(context);
                  });
                },
                child: Text("Toast_loading")),
            TouchableHighlight(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 10),
                child: Text("TouchableHightlight"),
              ),
              onPressed: () {},
            ),
            TouchableOpacity(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 10),
                child: Text("TouchableOpacity"),
              ),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
