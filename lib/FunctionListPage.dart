import 'package:flutter/material.dart';
import 'package:flutter_learn/MyHomePage.dart';
import 'package:flutter_learn/PageBean.dart';
import 'package:flutter_learn/WidgetDemoPage.dart';
import 'package:flutter_learn/button/SlideDismissPage.dart';
import 'package:flutter_learn/button/Taps.dart';
import 'package:flutter_learn/cart/Product.dart';
import 'package:flutter_learn/cart/ShoppingListPage.dart';
import 'package:flutter_learn/images/HorizontalList.dart';
import 'package:flutter_learn/images/ImageDemoPage.dart';
import 'package:flutter_learn/widgets/basics/ListsImages.dart';
import 'package:flutter_learn/images/MultipleListPage.dart';
import 'package:flutter_learn/layout/LayoutPage.dart';
import 'package:flutter_learn/net/HttpGetPage.dart';

class FunListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<PageBean> pages = new List();
    pages.add(new PageBean("Basic Widget", new WidgetDemoPage()));
    pages.add(new PageBean(
        "Cart Widget",
        new ShoppingListPage(
          products: <Product>[
            new Product(name: 'Eggs'),
            new Product(name: 'Flour'),
            new Product(name: 'Chocolate chips'),
          ],
        )));
    pages.add(new PageBean(
        "Home page",
        new MyHomePage(
          title: "Home page",
        )));
    pages.add(new PageBean("WebImage", new ImageDemoPage()));
    pages.add(new PageBean("ImageList", new ListsImages()));
    pages.add(new PageBean("HorizontalList", new HorizontalList()));
    pages.add(new PageBean(
        "MultipleListPage",
        new MultipleListPage(
            items: new List<ListItem>.generate(
          1000,
          (i) => i % 6 == 0
              ? new HeadingItem("Heading $i")
              : new MessageItem("Sender $i", "Message body $i"),
        ))));
    pages.add(new PageBean("Button", new Taps()));
    pages.add(new PageBean("SlideDismissPage", new SlideDismissPage()));
    pages.add(new PageBean("HttpGetPage", new HttpGetPage()));
    pages.add(new PageBean("LayoutPage", new LayoutPage()));
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("功能列表"),
      ),
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
        },
      ),
    );
  }
}
