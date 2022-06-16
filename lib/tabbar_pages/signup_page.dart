import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
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
              labelText: 'Username',
            ),
          ),
          SizedBox(
            height: 10,
          ),
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
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => Profile()));
                  },
                  child: Text(
                    "SIGN UP",
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
        ],
      ),
    ));
  }
}
