import 'package:flutter/material.dart';

/*
    生命周期测试
    https://book.flutterchina.club/chapter3/flutter_widget_intro.html
 */
class WidgetLifecyclePage extends StatefulWidget {
  final int initValue;

  @override
  State<StatefulWidget> createState() => _WidgetLifecyclePage();

  const WidgetLifecyclePage({Key key, this.initValue: 0});
}

class _WidgetLifecyclePage extends State<WidgetLifecyclePage> {
  int _counter;

  @override
  void initState() {
    super.initState();
    _counter = widget.initValue;
    print("initState");
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    print("build");
    return Scaffold(
      appBar: new AppBar(
        title: new Text("生命周期测试"),
      ),
      body: Center(
        child: FlatButton(
          child: Text('$_counter'),
          //点击后计数器自增
          onPressed: () => setState(
            () => ++_counter,
          ),
        ),
      ),
    );
  }

  @override
  void didUpdateWidget(WidgetLifecyclePage oldWidget) {
    super.didUpdateWidget(oldWidget);
    print("didUpdateWidget");
  }

  @override
  void deactivate() {
    super.deactivate();
    print("deactive");
  }

  @override
  void dispose() {
    super.dispose();
    print("dispose");
  }

  @override
  void reassemble() {
    super.reassemble();
    print("reassemble");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("didChangeDependencies");
  }
}
