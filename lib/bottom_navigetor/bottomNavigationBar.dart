import 'package:flutter/material.dart';
import 'package:online_furniture_store/screens/home.dart';

//import '../pages/product_list.dart';
import '../my_cart/cart.dart';
import '../pages/my_basket.dart';
import '../pages/profile.dart';
import '../pages/settings.dart';
import '../reviews/reviews.dart';

class MyHomePage extends StatefulWidget {
  // late final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int bottomSelectedIndex = 0;

  List<BottomNavigationBarItem> buildBottomNavBarItems() {
    return [
      BottomNavigationBarItem(
          icon: Icon(Icons.home, color: Colors.grey),
          label: '',
          backgroundColor: Colors.white),
      BottomNavigationBarItem(
          icon: Icon(Icons.shopping_bag, color: Colors.grey),
          label: '',
          backgroundColor: Colors.white),
      BottomNavigationBarItem(
          icon: Icon(Icons.person, color: Colors.grey),
          label: '',
          backgroundColor: Colors.white),
      BottomNavigationBarItem(
          icon: Icon(Icons.settings, color: Colors.grey),
          label: '',
          backgroundColor: Colors.white),
      BottomNavigationBarItem(
          icon: Icon(Icons.menu, color: Colors.grey),
          label: '',
          backgroundColor: Colors.white),
    ];
  }

  PageController pageController = PageController(
    initialPage: 0,
    keepPage: true,
  );

  Widget buildPageView() {
    return PageView(
      controller: pageController,
      onPageChanged: (index) {
        pageChanged(index);
      },
      children: <Widget>[
        Cart(),
        MyBasket(),
        Reviews(),
        Settings(),
        Profile(),
      ],
    );
  }

  @override
  void initState() {
    super.initState();
  }

  void pageChanged(int index) {
    setState(() {
      bottomSelectedIndex = index;
    });
  }

  void bottomTapped(int index) {
    setState(() {
      bottomSelectedIndex = index;
      pageController.animateToPage(index,
          duration: Duration(milliseconds: 500), curve: Curves.ease);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildPageView(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: bottomSelectedIndex,
        onTap: (index) {
          bottomTapped(index);
        },
        items: buildBottomNavBarItems(),
      ),
    );
  }
}
