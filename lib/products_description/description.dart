import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';

import '../reusable_widgets/reusable_widget.dart';

class description extends StatefulWidget {
  const description({Key? key}) : super(key: key);

  @override
  State<description> createState() => _descriptionState();
}

class _descriptionState extends State<description> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: '',
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Center(
                  child: Image.asset(
                "assets/Chair1.png",
                color: Colors.orange,
              )),
              Container(
                  height: 240,
                  width: 400,
                  padding: EdgeInsets.all(10),
                  child: Card(
                      shadowColor: Colors.black,
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      color: Colors.white,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  'Chair',
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                FavoriteButton(
                                  isFavorite: false,
                                  valueChanged: (_isfavorite) {},
                                ),
                              ],
                            ),
                            Divider(
                              indent: 60,
                              endIndent: 230,
                              thickness: 3,
                              color: Colors.orange,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 30),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "\$55",
                                    style: TextStyle(
                                      color: Colors.deepPurple,
                                      fontSize: 50,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 240,
                                    height: 120,
                                    child: UIButton(context, "Buy Now", () {
                                      Navigator.pushNamed(context, '/');
                                    }),
                                  ),
                                ],
                              ),
                            )
                          ]))),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.only(left: 50, right: 30),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.shopping_bag_outlined,
                          size: 40,
                          color: Colors.orange,
                        ),
                        Text(
                          "Desccription",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Container(
                        height: 200,
                        width: 420,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 30),
                          child: Text(
                            "I watched a thunderstorm, far out over the sea. It began quietly, and with nothing visible except tall dark clouds and a rolling tide. I watched a thunderstorm, far out over the sea. It began quietly, and with nothing visible except tall dark clouds and a rolling tide.I watched a thunderstorm, far out over the sea. It began quietly, and with nothing visible except tall dark clouds and a rolling tideI watched a thunderstorm, far out over the sea. It began quietly, and with nothing visible except tall dark clouds and a rolling tide",
                          ),
                        ),
                        //  alignment: TextAlign.justify

                        // TextAlign.justify,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
