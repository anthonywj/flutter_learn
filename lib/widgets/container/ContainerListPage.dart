import 'package:flutter/material.dart';

import '../../PageBean.dart';
import 'ConstrainedSizePage.dart';
import 'PaddingPage.dart';

class ContainerListPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ContainerListPage();
  }
}

class _ContainerListPage extends State<ContainerListPage> {
  @override
  Widget build(BuildContext context) {
    final List<PageBean> pages = new List();
    pages.add(new PageBean("Padding", new PaddingPage()));
    pages.add(new PageBean("ConstrainedSize", new ConstrainedSizePage()));
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
