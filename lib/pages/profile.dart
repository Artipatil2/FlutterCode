import 'package:flutter/material.dart';
import 'package:online_furniture_store/pages/settings.dart';

import '../bottom_navigetor/bottomNavigationBar.dart';
import 'my_basket.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
        child: Column(children: [
          Center(
            child: Container(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/image.png'),
                backgroundColor: Colors.grey[300],
                maxRadius: 60,
                //minRadius: 0,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Your Name",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 140),
                child: Icon(Icons.location_on, color: Colors.red),
              ),
              Container(
                child: Text(
                  "City",
                  style: TextStyle(fontSize: 20),
                ),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: TextButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.mail,
                      size: 30.0,
                      color: Colors.grey,
                    ),
                    label: Text(
                      'Messages',
                      textAlign: TextAlign.left,
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ),
                ),
                Divider(
                  height: 10,
                  color: Colors.grey[600],
                  thickness: 0.8,
                  indent: 40,
                  endIndent: 10,
                ),
                TextButton.icon(
                  onPressed: () {},
                  icon: Icon(
                    Icons.notifications,
                    size: 30.0,
                    color: Colors.grey,
                  ),
                  label: Text(
                    'Notification',
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                ),
                Divider(
                  height: 10,
                  color: Colors.grey[600],
                  thickness: 0.8,
                  indent: 40,
                  endIndent: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 38),
                  child: TextButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.account_balance,
                      size: 30.0,
                      color: Colors.grey,
                    ),
                    label: Text(
                      'Account Details',
                      textAlign: TextAlign.justify,
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ),
                ),
                Divider(
                  height: 10,
                  color: Colors.grey[600],
                  thickness: 0.8,
                  indent: 40,
                  endIndent: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 28),
                  child: TextButton.icon(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MyBasket()),
                      );
                    },
                    icon: Icon(
                      Icons.shopping_bag,
                      size: 30.0,
                      color: Colors.grey,
                    ),
                    label: Text(
                      'My Purchases',
                      textAlign: TextAlign.justify,
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ),
                ),
                Divider(
                  height: 10,
                  color: Colors.grey[600],
                  thickness: 0.8,
                  indent: 40,
                  endIndent: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: TextButton.icon(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Settings()),
                      );
                    },
                    icon: Icon(
                      Icons.settings,
                      size: 30.0,
                      color: Colors.grey,
                    ),
                    label: Text(
                      'Settings',
                      textAlign: TextAlign.justify,
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
          )
        ]),
      ),
      // bottomNavigationBar: BottomBar(),
    );
  }
}
