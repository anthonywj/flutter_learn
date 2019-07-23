import 'package:flutter/material.dart';
import 'package:flutter_learn/widgets/state/ParentWidget.dart';
import 'package:flutter_learn/widgets/state/ParentWidgetC.dart';

import '../../PageBean.dart';
import 'ButtonPage.dart';
import 'CheckPage.dart';
import 'ImagePage.dart';
import 'ListsImages.dart';
import 'TextFieldPage.dart';
import 'TextPage.dart';
import 'WidgetLifecyclePage.dart';

class BasicListPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _BasicListPage();
  }
}

class _BasicListPage extends State<BasicListPage> {
  @override
  Widget build(BuildContext context) {
    final List<PageBean> pages = new List();
    pages.add(new PageBean("生命周期测试", new WidgetLifecyclePage()));
    pages.add(new PageBean("状态管理一", new ParentWidget()));
    pages.add(new PageBean("状态管理二", new ParentWidgetC()));
    pages.add(new PageBean("文本，字体，样式,icon", new TextPage()));
    pages.add(new PageBean("按钮", new ButtonPage()));
    pages.add(new PageBean("图片", new ListsImages()));
    pages.add(new PageBean("单选开关和复选框", new CheckPage()));
    pages.add(new PageBean("输入框", new TextFieldPage()));
    return new Scaffold(
      body: new ListView.builder(
          itemCount: pages.length,
          itemBuilder: (context, index) {
            return new ListTile(
              title: new Text(pages[index].title),
              onTap: () {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => pages[index].page));
              },
            );
          }),
    );
  }
}
