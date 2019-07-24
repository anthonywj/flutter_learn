import 'package:flutter/material.dart';

class PaddingPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PaddingPage();
  }
}

class _PaddingPage extends State<PaddingPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: Text("Padding"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 18),
              child: Text("人在天涯人逍遥，心在天堂心升华"),
            ),
            Padding(
              padding: const EdgeInsets.all(18),
              child: Text("人在天涯人逍遥，心在天堂心升华"),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Text("人在天涯人逍遥，心在天堂心升华人在天涯人逍遥，心在天堂心升华"),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(18, 18, 0, 5),
              child: Text("人在天涯人逍遥，心在天堂心升华"),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18),
              child: Text("人在天涯人逍遥，心在天堂心升华"),
            ),
          ],
        ),
      ),
    );
  }
}
