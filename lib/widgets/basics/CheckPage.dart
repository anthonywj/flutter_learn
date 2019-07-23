import 'package:flutter/material.dart';

class CheckPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _CheckPage();
}

class _CheckPage extends State<CheckPage> {
  bool _switchSelected = true; //维护单选开关状态
  bool _checkboxSelected = true; //维护复选框状态

  int swValue1 = 1;
  int swValue2 = 2;
  int swValue3 = 3;


  int _groupValue=2;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("单选复选"),
      ),
      body: new Container(
        child: new Column(
          children: <Widget>[
            Switch(
              value: _switchSelected,
              onChanged: (value) {
                setState(() {
                  _switchSelected = value;
                });
              },
            ),
            Checkbox(
              value: _checkboxSelected,
              onChanged: (value) {
                setState(() {
                  _checkboxSelected = value;
                });
              },
            ),
          Radio(
            value:swValue1,
            groupValue: _groupValue,
            onChanged: (value){
              setState(() {
                _groupValue=value;
              });
            },
          ),

          Radio(
            value: swValue2,
            groupValue: _groupValue,
            onChanged: (value){
              setState(() {
                _groupValue=value;
              });
            },
          ),

          Radio(
            value: swValue3,
            groupValue: _groupValue,
            onChanged: (value){
              setState(() {
                _groupValue=value;
              });
            },
          ),

          ],
        ),
      ),
    );
  }
}
