import 'package:flutter/material.dart';
import 'package:online_furniture_store/tabbar_pages/signin_page.dart';
import 'package:online_furniture_store/tabbar_pages/signup_page.dart';

class Tabbar extends StatefulWidget {
  const Tabbar({Key? key}) : super(key: key);

  @override
  _TabbarState createState() => _TabbarState();
}

class _TabbarState extends State<Tabbar> with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            flexibleSpace: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
              Color.fromARGB(255, 214, 165, 29),
              Color.fromARGB(255, 184, 73, 17)
            ], begin: Alignment.topCenter, end: Alignment.topRight))),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(60, 60, 60, 0),
              child: Container(
                height: MediaQuery.of(context).size.height,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 60,
                      width: 250,
                      decoration: new BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.grey),
                          borderRadius: new BorderRadius.circular(40)),
                      child: TabBar(
                        indicator: BoxDecoration(
                            color: Color.fromARGB(255, 194, 193, 193),
                            borderRadius: BorderRadius.only(
                              topLeft: const Radius.circular(40.0),
                              bottomLeft: const Radius.circular(40.0),
                              topRight: const Radius.circular(40.0),
                              bottomRight: const Radius.circular(40.0),
                            )),
                        controller: tabController,
                        tabs: [
                          Tab(
                            text: 'Sign in',
                          ),
                          Tab(
                            text: 'Sign up',
                          )
                        ],
                        labelColor: Color.fromARGB(255, 105, 15, 87),
                      ),
                    ),
                    Expanded(
                      child: TabBarView(
                        controller: tabController,
                        children: [Signin(), Signup()],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
