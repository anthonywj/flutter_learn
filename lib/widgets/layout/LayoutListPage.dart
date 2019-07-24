import 'package:flutter/material.dart';

import '../../PageBean.dart';
import 'FlexPage.dart';
import 'RowColumnPage.dart';
import 'StackPage.dart';
import 'WrapPage.dart';

class LayoutListPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _LayoutListPage();
  }
}

class _LayoutListPage extends State<LayoutListPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final List<PageBean> pages = new List();
    pages.add(new PageBean("Row & Column", new RowColumnPage()));
    pages.add(new PageBean("Flex", new FlexPage()));
    pages.add(new PageBean("WrapPage", new WrapPage()));
    pages.add(new PageBean("StackPage", new StackPage()));
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
