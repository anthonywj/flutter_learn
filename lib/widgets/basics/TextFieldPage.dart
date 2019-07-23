import 'package:flutter/material.dart';

class TextFieldPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _TextFieldPage();
  }
}

class _TextFieldPage extends State<TextFieldPage> {
  //监听文本输入
  TextEditingController _textEditingController = new TextEditingController();

  @override
  void initState() {
    _textEditingController.text = "17705920868";
    _textEditingController.selection = TextSelection(
        baseOffset: 2, extentOffset: _textEditingController.text.length);
    _textEditingController.addListener(() {
      print(_textEditingController.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    FocusNode focusNode1 = new FocusNode();
    focusNode1.addListener(() {
      //焦点监听
      print(focusNode1.hasFocus);
    });
    FocusNode focusNode2 = new FocusNode();
    FocusScopeNode focusScopeNode;

    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("输入框"),
      ),
      body: new Container(
        child: new ListView(
          children: <Widget>[
            TextField(
              controller: _textEditingController,
              autofocus: true,
              decoration: new InputDecoration(
                  labelText: "用户名",
                  labelStyle: new TextStyle(fontSize: 25.0),
                  hintText: "手机号",
                  hintStyle: new TextStyle(fontSize: 14.0),
                  prefixIcon:
                      Icon(Icons.phone)), //用于控制TextField的外观显示，如提示文本、背景颜色、边框等。
            ),
            TextField(
                autofocus: true,
                decoration: new InputDecoration(
                    labelText: "密码",
                    labelStyle: new TextStyle(fontSize: 25.0),
                    hintText: "密码",
                    hintStyle: new TextStyle(fontSize: 14.0),
                    prefixIcon: Icon(Icons.lock)),
                obscureText: true,
                onChanged: (value) {
                  print("onChange: $value");
                }),
            TextField(
              autofocus: true,
              focusNode: focusNode1, //关联focusNode1
              decoration: InputDecoration(labelText: "input1"),
            ),
            TextField(
              focusNode: focusNode2, //关联focusNode2
              decoration: InputDecoration(labelText: "input2"),
            ),
            Builder(builder: (ywj) {
              return ButtonBar(
                children: <Widget>[
                  RaisedButton(
                    child: Text("移动焦点"),
                    onPressed: () {
                      //将焦点从第一个TextField移到第二个TextField
                      // 这是一种写法 FocusScope.of(context).requestFocus(focusNode2);
                      // 这是第二种写法
                      if (null == focusScopeNode) {
                        focusScopeNode = FocusScope.of(context);
                      }
                      focusScopeNode.requestFocus(focusNode2);
                    },
                  ),
                  RaisedButton(
                    child: Text("隐藏键盘"),
                    onPressed: () {
                      // 当所有编辑框都失去焦点时键盘就会收起
                      focusNode1.unfocus();
                      focusNode2.unfocus();
                    },
                  ),
                ],
              );
            }),
            Theme(
                data: Theme.of(context).copyWith(
                    hintColor: Colors.grey[200], //定义下划线颜色
                    inputDecorationTheme: InputDecorationTheme(
                        labelStyle: TextStyle(color: Colors.grey), //定义label字体样式
                        hintStyle: TextStyle(
                            color: Colors.grey, fontSize: 14.0) //定义提示文本样式
                        )),
                child: Column(
                  children: <Widget>[
                    TextField(
                      decoration: InputDecoration(
                          labelText: "用户名",
                          hintText: "用户名或邮箱",
                          prefixIcon: Icon(Icons.person),
                          border: InputBorder.none //隐藏下划线
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock),
                          labelText: "密码",
                          hintText: "您的登录密码",
                          hintStyle:
                              TextStyle(color: Colors.grey, fontSize: 13.0)),
                      obscureText: true,
                    )

                  ],
                )),
          ],
        ),
      ),
    );
  }
}
