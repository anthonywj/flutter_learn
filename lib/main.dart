import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_learn/FunctionListPage.dart';

void main() {
  debugPaintSizeEnabled=true;
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.lightBlue[800],
        accentColor: Colors.cyan[600],
      ),
      home: new FunListPage(),
    );
  }
}
