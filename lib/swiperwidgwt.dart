import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';

class swiperwidgwd extends StatelessWidget {
  List<String> images = [
    'images/b1.png',
    'images/b2.png',
    'images/b3.png',
    'images/b4.png',
    'images/b5.png',
  ];
  swiperwidgwd({super.key});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Container(
      height: h * 0.25,
      width: w * 0.9,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(h * 0.06),
        color: Colors.black,
      ),
    );
  }
}
