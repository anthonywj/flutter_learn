import 'package:flutter/material.dart';

class ImagePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _ImagePage();
  }
}

class _ImagePage extends State<ImagePage> {


  @override
  Widget build(BuildContext context) {


    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("图片及Icon"),
      ),
      body: new Container(
        child: new Column(
          children: <Widget>[
            Image(
              image: AssetImage("assets/images/avator.png"),
              width: 80.0,
            ),
            Image.asset(
              "assets/images/avator.png",
              width: 80,
            ),
            new Image.network(
              'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1534928159157&di=3b258bc94ce73123f3d69bcc404d7e4f&imgtype=0&src=http%3A%2F%2Fimg4.duitang.com%2Fuploads%2Fitem%2F201406%2F20%2F20140620193408_hcjVU.jpeg',
            ),
            Image(
              image: NetworkImage(
                  "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1563873707118&di=6f1be72a5a00ea180de8ec4c728c717d&imgtype=0&src=http%3A%2F%2Fpic1.win4000.com%2Fwallpaper%2F2018-04-25%2F5adfde02c7f22.jpg"),
            ),
          ],
        ),
      ),
    );
  }
}
