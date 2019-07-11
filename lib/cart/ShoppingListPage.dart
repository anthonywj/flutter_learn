import 'package:flutter/material.dart';
import 'package:flutter_learn/cart/Product.dart';
import 'package:flutter_learn/cart/ShoppingListItem.dart';

class ShoppingListPage extends StatefulWidget {
  final List<Product> products;

  ShoppingListPage({Key key, this.products}) : super(key: key);

  @override
  _ShoppingListState createState() => new _ShoppingListState();
}

class _ShoppingListState extends State<ShoppingListPage> {
  Set<Product> _shoppingCart = new Set<Product>();

  @override
  void initState() {
    super.initState();
  }

  void _handleCartChanged(Product product, bool inCart) {
    setState(() {
      if (inCart)
        _shoppingCart.add(product);
      else
        _shoppingCart.remove(product);
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Shopping List'),
      ),
      body: new ListView(
        padding: new EdgeInsets.symmetric(vertical: 8.0),
        children: widget.products.map((Product product) {
          return new ShoppingListItem(
            product: product,
            inCart: _shoppingCart.contains(product),
            changedCallback: _handleCartChanged,
          );
        }).toList(),
      ),
    );
  }
}
