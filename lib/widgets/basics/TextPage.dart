import 'package:flutter/material.dart';

import 'TextStyleMS.dart';

class TextPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _TextPage();
  }
}

class _TextPage extends State<TextPage> {
  String icons = "";

  @override
  Widget build(BuildContext context) {
    // accessible: &#xE914; or 0xE914 or E914
    icons += "\uE914";
// error: &#xE000; or 0xE000 or E000
    icons += " \uE000";
// fingerprint: &#xE90D; or 0xE90D or E90D
    icons += " \uE90D";

    return new Scaffold(
      appBar: new AppBar(
        title: new Text("文字-text"),
      ),
      body: new Container(
        color: Colors.white30,
        child: new Column(
          children: <Widget>[
            new Row(
              children: <Widget>[
                new Text(
                  "最美的期待",
                  textAlign: TextAlign.start,
                  textScaleFactor: 1.5,
                ),
              ],
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
            ),
            new Text(
              "闻到暗香飘满山水间，听见风刮过我的耳边。看见花瓣散满了江面，相看却不曾生厌。",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            new Text(
              "闻到暗香飘满山水间，听见风刮过我的耳边。看见花瓣散满了江面，相看却不曾生厌。",
              textAlign: TextAlign.center,
            ),
            new Text(
              "闻到暗香飘满山水间，听见风刮过我的耳边。看见花瓣散满了江面，相看却不曾生厌。",
              style: TextStyle(
                  color: Colors.amberAccent,
                  fontSize: 18.0,
                  height: 1.5,
                  fontFamily: "BungeeOutline"),
            ),
            new Icon(Icons.four_k),
            new Text(
              "闻到暗香飘满山水间，听见风刮过我的耳边。看见花瓣散满了江面，相看却不曾生厌。",
              style: TextStyleMS.titleStyle,
            ),
            new Text(
              "闻到暗香飘满山水间，听见风刮过我的耳边。看见花瓣散满了江面，相看却不曾生厌。",
              style: TextStyleMS.contentStyle,
            ),
            new Text(icons,
                style: new TextStyle(
                    fontFamily: "MaterialIcons",
                    fontSize: 24.0,
                    color: Colors.pinkAccent
                )
            ),
          ],
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
        ),
      ),
    );
  }
}
