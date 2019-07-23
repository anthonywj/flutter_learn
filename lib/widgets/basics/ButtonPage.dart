import 'package:flutter/material.dart';

class ButtonPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _ButtonPage();
  }
}

class _ButtonPage extends State<ButtonPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("按钮样式"),
      ),
      body: new Container(
          child: new Column(
        children: <Widget>[
          new Row(
            children: <Widget>[
              new RaisedButton(
                onPressed: () => {},
                color: Colors.teal,
                colorBrightness: Brightness.dark,
                splashColor: Colors.pinkAccent,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0)),
                child: Text("RaisedButton",
                    style: new TextStyle(color: Colors.white)),
              )
            ],
          ),
          new Row(
            children: <Widget>[
              new FlatButton(
                onPressed: () => {},
                child: Text("FlatButton"),
              )
            ],
          ),
          new Row(
            children: <Widget>[
              new OutlineButton(
                onPressed: () => {},
                child: Text("OutlineButton"),
              )
            ],
          ),
          new Row(
            children: <Widget>[
              new IconButton(
                onPressed: () => {},
                icon: Icon(Icons.thumb_down),
              )
            ],
          ),
          new ButtonBar(
            children: <Widget>[
              new FlatButton(
                color: Colors.amberAccent,
                onPressed: () => {},
                child: Text("FlatButton"),
              ),
              new FlatButton(
                onPressed: () => {},
                color: Colors.amberAccent,
                child: Text("FlatButton"),
              ),
              new FlatButton(
                onPressed: () => {},
                color: Colors.amberAccent,
                child: Text("FlatButton"),
              )
            ],
          )
        ],
      )),
    );
  }
}
