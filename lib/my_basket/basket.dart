import 'package:flutter/material.dart';
import 'package:online_furniture_store/my_basket/basketui.dart';
import 'package:online_furniture_store/my_Basket/constant.dart';

import '../reusable_widgets/reusable_widget.dart';
//import 'BasketUI.dart';

class Basket extends StatefulWidget {
  const Basket({Key? key}) : super(key: key);

  @override
  State<Basket> createState() => _BasketState();
}

class _BasketState extends State<Basket> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'My Basket',
      ),
      body: ListView.builder(
        padding: EdgeInsets.only(bottom: 10.0, top: 8.0),
        itemCount: productList.length,
        itemBuilder: (context, index) {
          return BasketUI(
            image: productList[index].image,
            name: productList[index].name,
            price: productList[index].price,
            key: Key(toString()),
          );
        },
      ),
      bottomNavigationBar: Material(
        child: Row(
          //mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 70),
              child: Icon(Icons.shopping_cart, size: 50),
            ),
            SizedBox(
              width: 120,
            ),
            Text(
              'Total : ',
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.right,
            ),
            Text(
              '200',
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.right,
              //'\$${productList.length > 0 ? productList.map<String>((m) => m.price * m._itemCount).reduce((value, element) => value + element).toString() : 0}'),
            )
          ],
        ),
      ),
    );
  }
}
