import 'package:flutter/material.dart';

class SlideDismissPage extends StatelessWidget {
  List<String> items;

  @override
  Widget build(BuildContext context) {
    items = new List<String>.generate(100, (i) => "Item ${i + 1}");

    return new Scaffold(
      appBar: new AppBar(
        title: new Text("SlideDismiss"),
      ),
      body: new ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return new Dismissible(
                key: new Key(item),
                onDismissed: (direction) {
                  items.removeAt(index);

                  Scaffold.of(context).showSnackBar(
                      new SnackBar(content: new Text("$item dismissed")));
                },
                background: new Container(
                  color: Colors.red,
                ),
                child: new ListTile(
                  title: new Text('$item'),
                ));
          }),
    );
  }
}
