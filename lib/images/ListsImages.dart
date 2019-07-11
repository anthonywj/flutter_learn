import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class ListsImages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("basic list"),
      ),
      body: new ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          new ListTile(
            leading: new Icon(Icons.map),
            title: new Text('Map'),
          ),
          new Image.network(
            'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1534928159157&di=3b258bc94ce73123f3d69bcc404d7e4f&imgtype=0&src=http%3A%2F%2Fimg4.duitang.com%2Fuploads%2Fitem%2F201406%2F20%2F20140620193408_hcjVU.jpeg',
          ),
          new Image.network(
            'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1534928216434&di=f093bc4e2f38253185c74909af741585&imgtype=0&src=http%3A%2F%2Fi1.mopimg.cn%2Fimg%2Fdzh%2F2015-01%2F468%2F2015012122374323.gif440.gif',
          ),
          new FadeInImage.memoryNetwork(
              placeholder: kTransparentImage,
              image:
                  "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1534928398312&di=de1732e4d6abd61a780b8c4cb47eb5ab&imgtype=0&src=http%3A%2F%2Fd.hiphotos.baidu.com%2Fimage%2Fpic%2Fitem%2F024f78f0f736afc3a2a61a56be19ebc4b745125e.jpg"),

        ],
      ),
    );
  }
}
