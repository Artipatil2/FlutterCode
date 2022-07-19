import 'package:flutter/material.dart';
import 'package:online_furniture_store/notification/notification.dart';
import 'package:online_furniture_store/pages/settings.dart';
import '../payment/payment.dart';
import '../reusable_widgets/reusable_widget.dart';
import '../verification/otp.dart';
import 'messages.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: '',
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
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Messages()));
                    },
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
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => notification()));
                  },
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
                  padding: const EdgeInsets.only(left: 60),
                  child: TextButton.icon(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Payment()));
                    },
                    icon: Icon(
                      Icons.account_balance,
                      size: 30.0,
                      color: Colors.grey,
                    ),
                    label: Text(
                      'Payment Methods',
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
                  padding: const EdgeInsets.only(left: 0),
                  child: TextButton.icon(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Otp()),
                      );
                    },
                    icon: Icon(
                      Icons.shopping_bag,
                      size: 30.0,
                      color: Colors.grey,
                    ),
                    label: Text(
                      'Verification',
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
