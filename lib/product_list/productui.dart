import 'package:flutter/material.dart';

//import 'constant.dart';

class ProductsUI extends StatefulWidget {
  final String image, name, oprice, price;
  const ProductsUI({
    required Key key,
    required this.image,
    required this.name,
    required this.oprice,
    required this.price,
  }) : super(key: key);

  @override
  State<ProductsUI> createState() => _ProductsUIState();
}

class _ProductsUIState extends State<ProductsUI> {
  @override
  int _itemCount = 0;
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(widget.image),
                    ),
                  ),
                ),
                SizedBox(
                  width: 40,
                ),

                //name and increment & decrement
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(
                              widget.name,
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                        FittedBox(
                          child: Row(
                            children: [
                              IconButton(
                                icon: new Icon(Icons.remove),
                                onPressed: () => setState(() => _itemCount != 0
                                    ? _itemCount--
                                    : _itemCount),
                              ),
                              Container(
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                  color: Colors.black,
                                  // width: 5,
                                )),
                                child:
                                    Center(child: Text(_itemCount.toString())),
                              ),
                              IconButton(
                                icon: new Icon(Icons.add),
                                onPressed: () => setState(() => _itemCount++),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(9.0),
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Column(
                              children: [
                                Text.rich(
                                  TextSpan(
                                    children: <TextSpan>[
                                      new TextSpan(
                                        text: widget.oprice,
                                        style: new TextStyle(
                                          fontSize: 20,
                                          color: Colors.grey,
                                          decoration:
                                              TextDecoration.lineThrough,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text.rich(
                                  TextSpan(
                                      text: widget.price,
                                      style: TextStyle(fontSize: 20)),
                                ),
                              ],
                            )),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
              ],
            )
          ]),
    );
  }
}
