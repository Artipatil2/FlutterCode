import 'package:flutter/material.dart';

import '../bottom_navigetor/bottomNavigationBar.dart';
import '../pages/profile.dart';

class Signin extends StatefulWidget {
  const Signin({Key? key}) : super(key: key);

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.fromLTRB(20, 60, 20, 0),
      child: Column(
        children: [
          TextFormField(
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              labelText: '+0(000)000-00-00',
            ),
          ),
          SizedBox(
            height: 10,
          ),
          TextFormField(
            decoration: InputDecoration(
                border: UnderlineInputBorder(),
                labelText: "Password",
                hintText: '........',
                hintStyle: TextStyle(fontSize: 30, color: Colors.grey[350])),
          ),
          SizedBox(
            height: 70,
          ),
          Center(
            child: Container(
                width: MediaQuery.of(context).size.width,
                height: 60,
                margin: const EdgeInsets.fromLTRB(30, 30, 30, 30),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(90)),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) =>MyHomePage()));
                  },
                  child: Text(
                    "SIGN IN",
                    style: TextStyle(
                        color: Colors.white,
                        //fontWeight: FontWeight.w900,
                        fontSize: 25),
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  color: Colors.orange[900],
                )),
          ),
          Container(
            child: const Text("Forgot your password?",
                style: TextStyle(color: Colors.grey, fontSize: 15)),
          )
        ],
      ),
    ));
  }
}
