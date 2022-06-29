import 'package:flutter/material.dart';

class MyBasket extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
          Color.fromARGB(255, 214, 165, 29),
          Color.fromARGB(255, 184, 73, 17)
        ], begin: Alignment.topCenter, end: Alignment.topRight))),
      ),
      body: Center(child: Text('My Basket')),
    );
  }
}
