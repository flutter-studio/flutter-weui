import 'package:flutter/material.dart';
import 'package:flutter_weui/flutter_weui.dart';
import 'package:flutter/cupertino.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return WeUIApp(
      theme: WeUIThemeData.light(),
      child: MaterialApp(
        title: 'Flutter Demo',
        color: Colors.red,
        theme: ThemeData.light(),
        home: MyHomePage(title: 'Flutter Demo Home Page'),
      ),
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
  WeUIThemeData theme = WeUIThemeData.light();


  void dark() {
    setState(() {
      theme = WeUIThemeData.dark();
    });
  }

  void light(){
    setState(() {
      theme = WeUIThemeData.light();
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
    return WeUIScaffold(
      appBar: null,
      body: ListView(
    //physics: BouncingScrollPhysics(),
    children: <Widget>[
      Column(
          mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
           Button(text: 'dark',onPress: dark),
           Button(type: ButtonType.primay,text: 'light',onPress: light,),
           Button(type: ButtonType.warn,onPress: (){
             Toast.success(context, "dfsdf");
           },),
             Button(loading: true,),
           Button(type: ButtonType.primay,loading: true,),
           Button(type: ButtonType.warn,loading: true,),
                     Button(disabled: true,),
           Button(type: ButtonType.primay,disabled: true,),
           Button(type: ButtonType.warn,onPress: (){
             Toast.close(context);
           },),
           Button(mini:true,onPress: ()async{
             Toast.loading(context, "dsfsfd");
             await Future.delayed(Duration(seconds: 2));
             Toast.close(context);
           }),
          PreView(
            header: PreViewHeader(
              label: "Header",
              value: "sdfs",
            ),
            body: PreViewBody(
              children: [
                PreViewItem(
                  label: 'Item',
                  value:'123'
                ),
                PreViewItem(
                    label: 'Item',
                    value:'123'
                ),
                PreViewItem(
                    label: 'Item',
                    value:'123'
                ),
                PreViewItem(
                    label: 'Item',
                    value:'123fsafsafsafsfsafsfssfwerrqreqwrwrsafsaffsfsfsfsfsfsfsfsfsf'
                )
              ],
            ),
            footer: PreViewFooter(
              children: [
                PreViewButton(text: "sdfs",),
                PreViewButton(text: "sfds",primary: true,onPressed: (){},)
              ],
            ),
          ),
          Panel(
            header: PanelHeader(child: Text('文字列表组合'),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                MediaBox(
                  onPress:(){},
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      MediaBoxTitle(
                        child: Text('标题1'),
                      ),
                      MediaBoxDesc(
                        child: Text("各种描述各种描述各种描述各种描述各种描述各种描述各种描述各种描述各种描述各种描述各种描述各种描述各种描述各种描述各种描述各种描述"),
                      )
                    ],
                  ),
                ),
                MediaBox(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      MediaBoxTitle(
                        child: Text('标题1'),
                      ),
                      MediaBoxDesc(
                        child: Text("各种描述各种描述各种描述各种描述各种描述各种描述各种描述各种描述各种描述各种描述各种描述各种描述各种描述各种描述各种描述各种描述"),
                      )
                    ],
                  ),
                ),
                MediaBox(
                  child: MediaBoxAppMsg(
                    header: Container(
                      width: double.infinity,
                      height: double.infinity,
                      color: Colors.grey,
                    ),
                    body: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        MediaBoxTitle(
                          child: Text('标题1'),
                        ),
                        MediaBoxDesc(
                          child: Text("描述各种描述各种描述各种描述各种描述各种描述各种描述各种描述各种描述"),
                        )
                      ],
                    ),
                  )
                )
              ],
            ),
          ),
          WeUIApp(child:
          Footer(
            // text: "sdfsfd",
            links: [Link(text: "sdfds"), Link(text: "sdfsf")],
          ),),
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
      )
    ],
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
                context,
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
