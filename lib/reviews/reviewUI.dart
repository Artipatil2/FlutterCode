import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

import 'constant.dart';

class ReviewUI extends StatelessWidget {
  final String image, name, comment;
  final double rating;
  final Function onTap, onPressed;
  final bool isLess;
  const ReviewUI({
    required Key key,
    required this.image,
    required this.name,
    required this.comment,
    required this.rating,
    required this.onTap,
    required this.isLess,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: Container(
        padding: EdgeInsets.only(
          top: 2.0,
          bottom: 2.0,
          left: 16.0,
          right: 0.0,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  height: 45.0,
                  width: 45.0,
                  margin: EdgeInsets.only(right: 16.0),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(image),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                ),
                Expanded(
                  child: Text(
                    name,
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 8.0),
            Row(
              children: [
                SmoothStarRating(
                  starCount: 5,
                  rating: rating,
                  size: 28.0,
                  color: Colors.orange,
                  borderColor: Colors.orange,
                ),
                SizedBox(width: kFixPadding),
              ],
            ),
            SizedBox(height: 5.0),
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Center(
                child: Divider(
                  thickness: 1.0,
                  color: kLightColor,
                ),
              ),
            ),
            SizedBox(height: 5.0),
            Center(
              child: GestureDetector(
                onTap: onTap(),
                child: isLess
                    ? Text(comment,
                        style: TextStyle(
                          fontSize: 18.0,
                          color: kLightColor,
                        ),
                        textAlign: TextAlign.start)
                    : Text(
                        comment,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 18.0,
                          color: kLightColor,
                        ),
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
