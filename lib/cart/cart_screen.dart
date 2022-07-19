import 'package:flutter/material.dart';
import 'package:online_furniture_store/cart/cart_products.dart';

import '../reusable_widgets/reusable_widget.dart';
import 'cart_total.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'My Basket',
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [CartProducts(), CartTotal()],
      ),
    );
  }
}
