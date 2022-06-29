import 'package:flutter/material.dart';
import 'reviewModal.dart';

const kAccentColor = Color(0xFFF1F1F1);
const kWhiteColor = Color(0xFFFFFFFF);
const kLightColor = Color(0xFF808080);

const kFixPadding = 16.0;

const kSmallDivider = Divider(
  color: kAccentColor,
  thickness: 5.0,
);

final reviewList = [
  ReviewModal(
    image: "assets/mensFashion.jpg",
    name: "John Travolta",
    rating: 3.5,
    comment:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
  ),
  ReviewModal(
    image: "assets/girlsFashion.jpg",
    name: "Scarlett Johansson",
    rating: 2.5,
    comment:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
  ),
  ReviewModal(
    image: "assets/user1.jpg",
    name: "Jennifer Lawrence",
    rating: 4.5,
    comment:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
  ),
  ReviewModal(
    image: "assets/user11.jpg",
    name: "Michael Jordan",
    rating: 1.5,
    comment:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
  ),
  ReviewModal(
    image: "assets/user2.jpg",
    name: "Nicole Kidman",
    rating: 2.0,
    comment:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
  ),
];
