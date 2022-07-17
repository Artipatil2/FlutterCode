import 'package:flutter/material.dart';
import 'package:online_furniture_store/screens/tabbar.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                Color.fromARGB(255, 214, 165, 29),
                Color.fromARGB(255, 184, 73, 17)
              ], begin: Alignment.topCenter, end: Alignment.bottomRight)),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 100),
                      child: const Text(
                        "ONLINE FURNITURE STORE",
                        textAlign: TextAlign.center,
                        textScaleFactor: 2.5,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            height: 1.5,
                            wordSpacing: 1.5),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                      child: Image.asset(
                    'assets/sofa.png',
                    cacheHeight: 250,
                    cacheWidth: 250,
                    scale: 200,
                    fit: BoxFit.fill,
                    color: Colors.white,
                    width: 250,
                  )),
                  SizedBox(
                    height: 100,
                  ),
                  Container(
                      width: MediaQuery.of(context).size.width,
                      height: 50,
                      margin: const EdgeInsets.fromLTRB(70, 20, 70, 30),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(90)),
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Tabbar()));
                        },
                        child: Text(
                          "GET STARTED",
                          style: TextStyle(
                              color: Color.fromARGB(255, 105, 15, 87),
                              fontWeight: FontWeight.w900,
                              fontSize: 23),
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        color: Colors.white,
                      )),
                  Container(
                    child: const Text("Don't have an account?",
                        style: TextStyle(color: Colors.white70, fontSize: 15)),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Container(
                    child: const Text("Sign in here",
                        style: TextStyle(color: Colors.white, fontSize: 25)),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(120, 0, 120, 30),
                    child: Container(
                        child: Image.asset(
                      "assets/divider.png",
                      cacheHeight: 18,
                      cacheWidth: 200,
                      scale: 90,
                      fit: BoxFit.fill,
                      color: Colors.white,
                      width: 400,
                    )),
                  )
                ],
              ))),
    );
  }
}
