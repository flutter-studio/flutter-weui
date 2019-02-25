import 'package:flutter/material.dart';
import 'package:flutter_weui/flutter_weui.dart';
import 'package:flutter/cupertino.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.light(),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: null,
      body: NotificationListener(
        onNotification: (e){
          print(e.toString());
        },
        child: ListView(
          //physics: BouncingScrollPhysics(),
          children: <Widget>[
            SizedBox(
              height: 200,
              child: PageView(
                children: <Widget>[Text("SDFSDFS"), Text("werfwr")],
              ),
            ),
            Center(
              // Center is a layout widget. It takes a single child and positions it
              // in the middle of the parent.
              child: Column(
                // Column is also layout widget. It takes a list of children and
                // arranges them vertically. By default, it sizes itself to fit its
                // children horizontally, and tries to be as tall as its parent.
                //
                // Invoke "debug painting" (press "p" in the console, choose the
                // "Toggle Debug Paint" action from the Flutter Inspector in Android
                // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
                // to see the wireframe for each widget.
                //
                // Column has various properties to control how it sizes itself and
                // how it positions its children. Here we use mainAxisAlignment to
                // center the children vertically; the main axis here is the vertical
                // axis because Columns are vertical (the cross axis would be
                // horizontal).
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  buildCells(context),
                  Ink(
                    decoration: BoxDecoration(color: Colors.red, borderRadius: BorderRadius.all(Radius.circular(50))),
                    child: InkWell(
                      splashColor: Colors.grey,
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      onTap: () {},
                      child: Container(
                        child: Center(child: Text("hhhh")),
                        height: 100,
                        width: 100,
                      ),
                    ),
                  ),
                  Text(
                    'You have pushed the button this many times:',
                  ),
                  /*,
              Button(type: ButtonType.btnPrimary,onPressed: (){
                print("------------");
              },text: "按钮",loading: false,),*/
                  Text(
                    '$_counter',
                    style: Theme.of(context).textTheme.display1,
                  ),
                  TouchableHighlight(
                    child: SizedBox(
                      child: Text("sfsf"),
                      height: 200,
                    ),
                    onPressed: () {},
                  ),
                  Footer(
                    text: "sdfsfd",
                    links: [Link(text: "sdfds"), Link(text: "sdfsf")],
                  ),
                  Article(
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
                  )
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          WDialog.show(context,
              title: "tafds",
              content: "content",
              actions: [
                DialogActions(
                    text: "cancel",
                    onPressed: () {
                      print("cancel");
                    }),
                DialogActions(
                    text: "ok",
                    onPressed: () {
                      print("ok");
                    })
              ],
              platform: TargetPlatform.android);
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Cells buildCells(BuildContext context) {
    return Cells(
      children: <Widget>[
        CellInput(
          keyBoardType: KeyBoardType.number,
        ),
        CellInput(
          keyBoardType: KeyBoardType.number,
        ),
        CellInput(
          keyBoardType: KeyBoardType.number,
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
                context: context,
                data: ["1", "3", "sdfs"],
                onPress: (details) {
                  print(details.toString());
                });
          },
          radio: true,
          checkBox: true,
        ),
        WSlider(),
        WSwitch(
          onChanged: (value) {},
        ),
        SuccessIcon(
          msg: true,
        ),
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
    );
  }
}
