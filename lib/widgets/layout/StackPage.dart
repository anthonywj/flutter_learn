import 'package:flutter/material.dart';

class StackPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _StackPage();
  }
}

class _StackPage extends State<StackPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
        appBar: AppBar(
          title: Text("层叠布局"),
        ),
        body: ConstrainedBox(
          constraints: BoxConstraints.expand(),
          child: Stack(
            children: <Widget>[
              Container(
                child: Text("张学友-如果爱", style: TextStyle(color: Colors.white)),
                color: Colors.red,
              ),
              Positioned(
                left: 18.0,
                top: 100,
                child: Text("如果这就是爱"),
              ),
              Positioned(
                top: 20,
                left: 18,
                child: Text("生命里完整灌溉"),
              )
            ],
          ),
        ));
  }
}
