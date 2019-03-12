import 'package:flutter/material.dart';

class H1 extends StatelessWidget {
  H1({Key key, this.text = ""}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Text(
        text,
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
      ),
    );
  }
}

class H2 extends StatelessWidget {
  H2({Key key, this.text = ""}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Text(
        text,
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
      ),
    );
  }
}

class H3 extends StatelessWidget {
  H3({Key key, this.text = ""}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Text(
        text,
        style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
      ),
    );
  }
}

class P extends StatelessWidget {
  P({Key key, this.text = ""}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Text(
        text,
      ),
    );
  }
}

class Article extends StatelessWidget {
  Article({Key key, this.children}) : super(key: key);
  final List<Widget> children;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: children,
      ),
    );
  }
}

class Section extends StatelessWidget {
  Section({Key key, this.children}) : super(key: key);
  final List<Widget> children;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: children,
      ),
    );
  }
}
