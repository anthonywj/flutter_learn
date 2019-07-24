import 'package:flutter/material.dart';

class TextFormPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _TextFormPage();
  }
}

class _TextFormPage extends State<TextFormPage> {
  GlobalKey _formKey = new GlobalKey<FormState>();
  TextEditingController _unameController = new TextEditingController();
  TextEditingController _pwdController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: Text("表单提交"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
        child: Form(
            key: _formKey,
            autovalidate: true,
            child: Column(
              children: <Widget>[
                TextFormField(
                  autofocus: true,
                  controller: _unameController,
                  decoration: InputDecoration(
                      labelText: "用户名",
                      hintText: "用户名或邮箱",
                      icon: Icon(Icons.person)),
                  validator: (value) {
                    return value.trim().length > 0 ? null : "用户名不能为空";
                  },
                ),
                TextFormField(
                  autofocus: true,
                  controller: _unameController,
                  obscureText: true,
                  decoration: InputDecoration(
                      labelText: "密码",
                      hintText: "你的登录密码",
                      icon: Icon(Icons.lock)),
                  validator: (value) {
                    return value.trim().length > 5 ? null : "密码不能少于6位";
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 28.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: RaisedButton(
                            padding: EdgeInsets.all(15.0),
                            child: Text("登录"),
                            color: Theme.of(context).primaryColor,
                            textColor: Colors.white,
                            onPressed: () {
                              if ((_formKey.currentState as FormState)
                                  .validate()) {
                                //验证通过提交数据
                              }
                            }),
                      ),
                    ],
                  ),
                )
              ],
            )),
      ),
    );
  }
}
