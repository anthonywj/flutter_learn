import 'package:flutter/material.dart';

import 'basics/BasicListPage.dart';
import 'basics/WidgetLifecyclePage.dart';
import 'container/ContainerListPage.dart';
import 'layout/LayoutListPage.dart';

class WidgetsPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _WidgetPageState();
}

class _WidgetPageState extends State<WidgetsPage>
    with SingleTickerProviderStateMixin {
  TabController _tabController; //需要定义一个Controller
  List tabs = ["基础", "布局", "容器", "可滚动", "功能", "事件处理", "自定义"];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: tabs.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: TabBar(
            isScrollable: true,
            controller: _tabController,
            tabs: tabs.map((e) => Tab(text: e)).toList()),
      ),
      body: TabBarView(
        controller: _tabController,
        children: tabs.map((f) {
          switch (f) {
            case "基础":
              return BasicListPage();
              break;
            case "布局":
              return LayoutListPage();
              break;
            case "容器":
              return ContainerListPage();
              break;
          }

          return new WidgetLifecyclePage();
        }).toList(),
      ),
    );
  }
}
