import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class ListsImages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("图片及icon"),
      ),
      body: new ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          new ListTile(
            leading: new Icon(Icons.map),
            title: new Text('图片'),
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
                "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1563873707118&di=6f1be72a5a00ea180de8ec4c728c717d&imgtype=0&src=http%3A%2F%2Fpic1.win4000.com%2Fwallpaper%2F2018-04-25%2F5adfde02c7f22.jpg",
          ),
          new Image.network(
            "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1563873707118&di=6f1be72a5a00ea180de8ec4c728c717d&imgtype=0&src=http%3A%2F%2Fpic1.win4000.com%2Fwallpaper%2F2018-04-25%2F5adfde02c7f22.jpg",
            width: 100,
            height: 100,
          ),
          new Image.network(
            "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1563873707118&di=6f1be72a5a00ea180de8ec4c728c717d&imgtype=0&src=http%3A%2F%2Fpic1.win4000.com%2Fwallpaper%2F2018-04-25%2F5adfde02c7f22.jpg",
            width: 100,
            height: 100,
            fit: BoxFit.fill,
          ),
          new Image.network(
            "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1563873707118&di=6f1be72a5a00ea180de8ec4c728c717d&imgtype=0&src=http%3A%2F%2Fpic1.win4000.com%2Fwallpaper%2F2018-04-25%2F5adfde02c7f22.jpg",
            width: 100,
            height: 100,
            fit: BoxFit.cover,
          ),
          new Image.network(
            "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1563873707118&di=6f1be72a5a00ea180de8ec4c728c717d&imgtype=0&src=http%3A%2F%2Fpic1.win4000.com%2Fwallpaper%2F2018-04-25%2F5adfde02c7f22.jpg",
            width: 100,
            height: 100,
            fit: BoxFit.fitWidth,
          ),
          new Image.network(
            "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1563873707118&di=6f1be72a5a00ea180de8ec4c728c717d&imgtype=0&src=http%3A%2F%2Fpic1.win4000.com%2Fwallpaper%2F2018-04-25%2F5adfde02c7f22.jpg",
            width: 100,
            height: 100,
            fit: BoxFit.fitHeight,
          ),
          new Image.network(
            "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1563873707118&di=6f1be72a5a00ea180de8ec4c728c717d&imgtype=0&src=http%3A%2F%2Fpic1.win4000.com%2Fwallpaper%2F2018-04-25%2F5adfde02c7f22.jpg",
            width: 100,
            height: 100,
            fit: BoxFit.scaleDown,
          ),

          new Image.network(
            "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1563873707118&di=6f1be72a5a00ea180de8ec4c728c717d&imgtype=0&src=http%3A%2F%2Fpic1.win4000.com%2Fwallpaper%2F2018-04-25%2F5adfde02c7f22.jpg",
            width: 50,
            height: 50,
          repeat: ImageRepeat.repeatX,
          ),
        ],
      ),
    );
  }
}
