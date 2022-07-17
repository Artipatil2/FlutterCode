import 'package:flutter/material.dart';

//import 'constant.dart';

class BasketUI extends StatefulWidget {
  final String image, name, price;
  const BasketUI({
    required Key key,
    required this.image,
    required this.name,
    required this.price,
  }) : super(key: key);

  @override
  State<BasketUI> createState() => _BasketUIState();
}

class _BasketUIState extends State<BasketUI> {
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
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                            widget.name,
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
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            widget.price,
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
                  width: 38,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 1.0),
                  child: Expanded(
                    child: Container(
                      child: FittedBox(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            IconButton(
                              icon: new Icon(Icons.remove),
                              onPressed: () => setState(() =>
                                  _itemCount != 0 ? _itemCount-- : _itemCount),
                            ),
                            Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                color: Colors.black,
                                // width: 5,
                              )),
                              child: Center(child: Text(_itemCount.toString())),
                            ),
                            IconButton(
                              icon: new Icon(Icons.add),
                              onPressed: () => setState(() => _itemCount++),
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
