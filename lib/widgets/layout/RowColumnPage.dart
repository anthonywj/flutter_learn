import 'package:flutter/material.dart';

class RowColumnPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _RowColumnPage();
  }
}

class _RowColumnPage extends State<RowColumnPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
        appBar: AppBar(
          title: Text("Row & Column"),
        ),
        body: new ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(15.0),
              child: new Text(
                "主轴和纵轴",
                style: TextStyle(fontSize: 15),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text("樂隊的夏天"),
                    Text("人间惆怅客"),
                  ],
                ),
                Row(
                  textDirection: TextDirection.rtl,
                  children: <Widget>[
                    Text(" textDirection: "),
                    Text("TextDirection.rtl,"),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("MainAxisSize.max"),
                    Text(" MainAxisAlignment.center"),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text("MainAxisSize.min "),
                    Text("MainAxisAlignment.center"),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  verticalDirection: VerticalDirection.up,
                  children: <Widget>[
                    Text(
                      "樂隊的夏天",
                      style: TextStyle(fontSize: 30.0),
                    ),
                    Text("人间惆怅客"),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text("樂隊的夏天"),
                    Text("人间惆怅客"),
                  ],
                ),
              ],
            ),
            Container(
              color: Colors.amber,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    color: Colors.greenAccent,
                    child: Column(
                      children: <Widget>[
                        Text("雨夜曼彻斯特"),
                        Text("雨夜曼彻斯特"),
                        Text("雨夜曼彻斯特"),
                        Text("雨夜曼彻斯特"),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
