import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Horizontal List'),
      ),
      body: new ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          new Container(
            width: 160.0,
            color: Colors.red,
          ),
          new Container(
            width: 160.0,
            color: Colors.blue,
          ),
          new Image.network(
            'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1534928159157&di=3b258bc94ce73123f3d69bcc404d7e4f&imgtype=0&src=http%3A%2F%2Fimg4.duitang.com%2Fuploads%2Fitem%2F201406%2F20%2F20140620193408_hcjVU.jpeg',
          ),
        ],
      ),
    );
  }
}
