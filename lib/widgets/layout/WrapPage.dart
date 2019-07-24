import 'package:flutter/material.dart';

class WrapPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _WrapPage();
  }
}

class _WrapPage extends State<WrapPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
        appBar: AppBar(
          title: Text("流式布局"),
        ),
        body: new Container(
          child: Column(
            children: <Widget>[
              Wrap(
                spacing: 8.0, // 主轴(水平)方向间距
                runSpacing: 4.0, // 纵轴（垂直）方向间距
                alignment: WrapAlignment.center, //沿主轴方向居中
                children: <Widget>[
                  new Chip(
                    avatar: new CircleAvatar(
                        backgroundColor: Colors.blue, child: Text('A')),
                    label: new Text('Hamilton'),
                  ),
                  new Chip(
                    avatar: new CircleAvatar(
                        backgroundColor: Colors.blue, child: Text('M')),
                    label: new Text('Lafayette'),
                  ),
                  new Chip(
                    avatar: new CircleAvatar(
                        backgroundColor: Colors.blue, child: Text('H')),
                    label: new Text('Mulligan'),
                  ),
                  new Chip(
                    avatar: new CircleAvatar(
                        backgroundColor: Colors.blue, child: Text('J')),
                    label: new Text('Laurens'),
                  ),
                ],
              ),
              Flex(
                direction: Axis.horizontal,
                children: <Widget>[
                  new Chip(
                    avatar: new CircleAvatar(
                        backgroundColor: Colors.blue, child: Text('A')),
                    label: new Text('Hamilton'),
                  ),
                  new Chip(
                    avatar: new CircleAvatar(
                        backgroundColor: Colors.blue, child: Text('M')),
                    label: new Text('Lafayette'),
                  ),
                  new Chip(
                    avatar: new CircleAvatar(
                        backgroundColor: Colors.blue, child: Text('H')),
                    label: new Text('Mulligan'),
                  ),
                  new Chip(
                    avatar: new CircleAvatar(
                        backgroundColor: Colors.blue, child: Text('J')),
                    label: new Text('Laurens'),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
