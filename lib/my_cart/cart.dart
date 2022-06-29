import 'package:flutter/material.dart';
import 'package:online_furniture_store/my_cart/constant.dart';
import 'package:online_furniture_store/my_cart/productmodel.dart';

import 'cartui.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  bool _searchBoolean = false;
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
        actions: [
          IconButton(
            onPressed: () {
              // method to show the search bar
              showSearch(
                  context: context,
                  // delegate to customize the search bar
                  delegate: CustomSearchDelegate());
            },
            icon: const Icon(Icons.search),
          )
        ],
      ),
      body: ListView.builder(
        padding: EdgeInsets.only(bottom: 10.0, top: 8.0),
        itemCount: productList.length,
        itemBuilder: (context, index) {
          return Card(
            child: CartUI(
              image: productList[index].image,
              name: productList[index].name,
              oprice: productList[index].oprice,
              price: productList[index].price,
              key: Key(toString()),
            ),
          );
        },
      ),
    );
  }
}

class CustomSearchDelegate extends SearchDelegate {

  List<String> searchTerms = [];

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: Icon(Icons.clear),
      ),
    ];
  }

// second overwrite to pop out of search menu
  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: Icon(Icons.arrow_back),
    );
  }

// third overwrite to show query result
  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];

    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }


  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];

    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }
}
