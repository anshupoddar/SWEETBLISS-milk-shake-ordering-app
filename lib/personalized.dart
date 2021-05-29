import 'package:flutter/material.dart';

import 'product.dart';
import 'flutter_cart.dart';
import 'checkout.dart';

class Caart extends StatefulWidget {
  @override
  _CaartState createState() => _CaartState();
}

class _CaartState extends State<Caart> {
  List<ProductModel> cart = [];
  int sum = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Color(0xFF920E4F),
        appBar: AppBar(
          title: Text("  Add on TOPPINGS"),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                text: "Grab your Shake!",
              ),
              Tab(
                text: "Checkout",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            ProductScreen((selectedProduct) {
              setState(() {
                cart.add(selectedProduct); //update
                sum = 0;
                cart.forEach((item) {
                  sum = sum + item.price;
                });
              });
            }),
            CheckoutScreen(cart, sum),
          ],
        ),
      ),
    );
  }
}
