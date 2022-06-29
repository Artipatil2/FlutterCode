import 'constant.dart';
import 'reviewUI.dart';
import 'package:flutter/material.dart';

import 'package:smooth_star_rating/smooth_star_rating.dart';

class Reviews extends StatefulWidget {
  //const Reviews({required Key key}) : super(key: key);

  @override
  _ReviewsState createState() => _ReviewsState();
}

class _ReviewsState extends State<Reviews> {
  bool isMore = false;
  List<double> ratings = [0.1, 0.3, 0.5, 0.7, 0.9];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Reviews',
        ),
        centerTitle: true,
        flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
          Color.fromARGB(255, 214, 165, 29),
          Color.fromARGB(255, 184, 73, 17)
        ], begin: Alignment.topCenter, end: Alignment.topRight))),
      ),
      backgroundColor: kWhiteColor,
      body: ListView.builder(
        padding: EdgeInsets.only(bottom: 10.0, top: 8.0),
        itemCount: reviewList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding:
                const EdgeInsets.only(right: 10, left: 10, top: 5, bottom: 5),
            child: Card(
              color: kAccentColor,
              child: ReviewUI(
                image: reviewList[index].image,
                name: reviewList[index].name,
                comment: reviewList[index].comment,
                rating: reviewList[index].rating,
                onPressed: () {},
                onTap: () {},
                isLess: true,
                key: Key(toString()),
              ),
            ),
          );
        },
      ),
    );
  }
}
