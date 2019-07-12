import 'package:flutter/material.dart';
import 'package:flutter_learn/frames/FramesPage.dart';
import 'package:flutter_learn/open/OpensPage.dart';
import 'package:flutter_learn/widgets/WidgetsPage.dart';

class ScaffoldRoute extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ScaffoldRouteState();
}

//首页
class _ScaffoldRouteState extends State<ScaffoldRoute> {
  int _selectedIndex = 1;

  var _pageList;

  @override
  Widget build(BuildContext context) {
    _initData();
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter 学习"),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.share), onPressed: () {}),
        ],
      ),
      drawer: MyDrawer(),
      body: _pageList[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("组件")),
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("框架")),
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("开源库")),
        ],
        currentIndex: _selectedIndex,
        fixedColor: Colors.purpleAccent,
        onTap: _onItemTapped,
      ),
      floatingActionButton:
          FloatingActionButton(child: Icon(Icons.add), onPressed: _onAdd),
    );
  }

  void _initData() {
    _pageList = [new WidgetsPage(), new FramesPage(), new OpensPage()];
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onAdd() {}
}

//抽屉菜单
class MyDrawer extends StatelessWidget {
  const MyDrawer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      child: MediaQuery.removePadding(
          //包裹组件，移除padding
          context: context,
          removeTop: true,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 38.0),
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: ClipOval(
                        child: Image.asset(
                          "assets/images/avator.png",
                          width: 60,
                        ),
                      ),
                    ),
                    Text(
                      "Anthont.wj",
                    )
                  ],
                ),
              ),
              Expanded(
                  child: ListView(
                children: <Widget>[
                  ListTile(
                    leading: const Icon(Icons.account_box),
                    title: const Text('个人资料'),
                  ),
                  ListTile(
                    leading: const Icon(Icons.settings),
                    title: const Text('设置'),
                  ),
                  ListTile(
                    leading: const Icon(Icons.exit_to_app),
                    title: const Text('退出'),
                  ),
                ],
              )),
            ],
          )),
    );
  }
}
