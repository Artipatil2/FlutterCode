import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_furniture_store/controller/cart_controller.dart';

class CartTotal extends StatelessWidget {
  final CartContoller contoller = Get.find();
  CartTotal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        // padding: const EdgeInsets.symmetric(horizontal: 75),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Total',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                // '200',
                '\$${contoller.total}',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              )
            ]),
      ),
    );
  }
}
