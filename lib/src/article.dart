import 'package:flutter/material.dart';
import 'base/theme.dart';

const double _dFontSize = 17;
const FontWeight _dFontWeight = FontWeight.w700;

class H1 extends StatelessWidget {
  H1({Key key, this.text = ""}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 0.9 * 22),
      child: Text(
        text,
        style: TextStyle(
            fontSize: 22,
            fontWeight: _dFontWeight,
            height: 1.4,
            color: WeUITheme.of(context).textDescColor),
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
      padding: const EdgeInsets.only(bottom: 0.34 * 17),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 17,
          fontWeight: _dFontWeight,
          height: 1.4,
          color: WeUITheme.of(context).textDescColor,
        ),
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
      padding: const EdgeInsets.only(bottom: 0.34 * 15),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 15,
          fontWeight: _dFontWeight,
          height: 1.4,
          color: WeUITheme.of(context).textDescColor,
        ),
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
      padding: const EdgeInsets.only(bottom: 16 * 0.8),
      child: Text(
        text,
        style: TextStyle(
          color: WeUITheme.of(context).textDescColor,
        ),
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
      padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
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
      padding: const EdgeInsets.only(bottom: 1.5 * _dFontSize),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: children,
      ),
    );
  }
}
