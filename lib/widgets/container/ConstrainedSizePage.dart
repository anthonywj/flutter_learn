import 'package:flutter/material.dart';

class ConstrainedSizePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ConstrainedSizePage();
  }
}

class _ConstrainedSizePage extends State<ConstrainedSizePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        title: Text("布局限制类容器"),
      ),
      body: Column(
        children: <Widget>[
          ConstrainedBox(
            constraints:
                BoxConstraints(minWidth: double.infinity, minHeight: 60.0),
            child: Container(height: 20, color: Colors.amberAccent),
          )
        ],
      ),
    );
  }
}
