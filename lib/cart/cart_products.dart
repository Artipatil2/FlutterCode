import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_furniture_store/controller/cart_controller.dart';
import '../models/product_model.dart';

class CartProducts extends StatelessWidget {
  final CartContoller contoller = Get.find();

  CartProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => SizedBox(
        height: 520,
        child: ListView.builder(
          itemCount: contoller.products.length,
          itemBuilder: (BuildContext context, int index) {
            return CartProductCard(
              contoller: contoller,
              product: contoller.products.keys.toList()[index],
              quantity: contoller.products.values.toList()[index],
              index: index,
            );
          },
        ),
      ),
    );
  }
}

//import 'constant.dart';
class CartProductCard extends StatelessWidget {
  final CartContoller contoller;
  final Product product;
  final int quantity;
  final int index;

  const CartProductCard(
      {Key? key,
      required this.contoller,
      required this.product,
      required this.quantity,
      required this.index})
      : super(key: key);

  // final MyContoller c = Get.put(MyContoller());
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(product.image),
                    ),
                    border: Border.all(color: Colors.grey.shade300, width: 2.0),
                  ),
                ),
                SizedBox(
                  width: 25,
                ),

                //name and increment & decrement
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            product.name,
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text(
                            '  \$${product.price}',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Expanded(
                    child: Container(
                      child: FittedBox(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            IconButton(
                                icon: new Icon(Icons.remove),
                                onPressed: () {
                                  contoller.removeProduct(product);
                                }),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                  color: Colors.black,
                                  // width: 5,
                                )),
                                child: Center(child: Text('$quantity'))),
                            SizedBox(
                              width: 10,
                            ),
                            IconButton(
                              icon: new Icon(Icons.add),
                              onPressed: () {
                                contoller.addProduct(product);
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ]),
    );
  }
}
