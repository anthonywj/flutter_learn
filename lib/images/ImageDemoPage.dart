import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';
class ImageDemoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Web Image"),
      ),
      body: new Stack(
        children: <Widget>[
          new Center(child: new CircularProgressIndicator()),
          new Center(
            child: new FadeInImage.memoryNetwork(
              placeholder: kTransparentImage,
              image:
              'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1534926811382&di=a1b6e46dad604e9087749be542e52bb3&imgtype=0&src=http%3A%2F%2Fa.hiphotos.baidu.com%2Fimage%2Fpic%2Fitem%2Fd1160924ab18972b4c670ef0ebcd7b899e510aae.jpg',
            ),
          ),
        ],
      ),
    );
  }
}
