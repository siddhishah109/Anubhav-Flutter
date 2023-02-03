import 'package:card_swiper/card_swiper.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> shoes = [
    'img/s1.png',
    'img/s2.png',
    'img/s3.png',
    'img/s4.png',
  ];
  List<String> men = ['img/m1.png', 'img/m2.png', 'img/m3.png'];
  List<String> acc = ['img/a1.png', 'img/a2.png', 'img/a3.png'];
  List<String> women = ['img/w1.png', 'img/w2.png', 'img/w3.png'];
  List<String> bag = ['img/b1.png', 'img/b2.png', 'img/b3.png'];

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: (() {
                Navigator.pop(context);
              }),
              icon: const Icon(Icons.arrow_back)),
          title: const Text(
            'Categories',
            textAlign: TextAlign.center,
            //  style: GoogleFonts.getFont('Lobster')
            // lobster(
            //   textStyle: TextStyle(
            //     color: Colors.white,
            //     fontSize: 4,
            //   )
            // )
          ),
          backgroundColor: Color.fromARGB(92, 172, 206, 226),
        ),
        body: Container(
          child: SingleChildScrollView(
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('img/back1.png'), fit: BoxFit.fill),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: h * 0.02,
                  ),
                  Container(
                      padding:
                          EdgeInsets.only(left: w * 0.025, right: w * 0.025),
                      height: h * 0.25,
                      width: w,
                      color: Color.fromARGB(57, 240, 5, 5),
                      child: Row(children: [
                        Container(
                          width: w * 0.47,
                          height: h * 0.23,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(h * 0.04),
                              border: Border.all(
                                  width: h * 0.003, color: Colors.black),
                              image: const DecorationImage(
                                  image: AssetImage('img/shoes.png'),
                                  fit: BoxFit.cover)),
                        ),
                        SizedBox(
                          height: h * 0.23,
                          width: w * 0.02,
                        ),
                        Container(
                            width: w * 0.46,
                            height: h * 0.23,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(h * 0.04),
                              border: Border.all(
                                  width: h * 0.003, color: Colors.black),
                            ),
                            child: Swiper(
                              itemCount: 4,
                              itemBuilder: ((context, index) {
                                final image = shoes[index];
                                return Container(
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(h * 0.04),
                                      color: const Color.fromARGB(255, 8, 8, 6),
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                          image,
                                        ),
                                      )),
                                );
                              }),
                              autoplay: true,
                              pagination: const SwiperPagination(
                                  alignment: Alignment.bottomCenter,
                                  builder: DotSwiperPaginationBuilder(
                                      color: Colors.white,
                                      activeColor:
                                          Color.fromARGB(255, 238, 241, 35))),
                            )),
                      ])),
                  SizedBox(
                    height: h * 0.02,
                  ),
                  Container(
                      padding:
                          EdgeInsets.only(left: w * 0.025, right: w * 0.025),
                      height: h * 0.25,
                      width: w,
                      color: Color.fromARGB(70, 243, 36, 36),
                      child: Row(children: [
                        Container(
                          width: w * 0.47,
                          height: h * 0.23,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(h * 0.04),
                              border: Border.all(
                                  width: h * 0.003, color: Colors.black),
                              image: const DecorationImage(
                                  image: AssetImage('img/men.png'),
                                  fit: BoxFit.cover)),
                        ),
                        SizedBox(
                          height: h * 0.23,
                          width: w * 0.02,
                        ),
                        Container(
                            width: w * 0.46,
                            height: h * 0.23,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(h * 0.04),
                              border: Border.all(
                                  width: h * 0.003, color: Colors.black),
                            ),
                            child: Swiper(
                              itemCount: 3,
                              itemBuilder: ((context, index) {
                                final image = men[index];
                                return Container(
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(h * 0.04),
                                      color: const Color.fromARGB(255, 8, 8, 6),
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                          image,
                                        ),
                                      )),
                                );
                              }),
                              autoplay: true,
                              pagination: const SwiperPagination(
                                  alignment: Alignment.bottomCenter,
                                  builder: DotSwiperPaginationBuilder(
                                      color: Colors.white,
                                      activeColor:
                                          Color.fromARGB(255, 238, 241, 35))),
                            )),
                      ])),
                  SizedBox(
                    height: h * 0.02,
                  ),
                  Container(
                      padding:
                          EdgeInsets.only(left: w * 0.025, right: w * 0.025),
                      height: h * 0.25,
                      width: w,
                      color: Color.fromARGB(70, 243, 36, 36),
                      child: Row(children: [
                        Container(
                          width: w * 0.47,
                          height: h * 0.23,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(h * 0.04),
                              border: Border.all(
                                  width: h * 0.003, color: Colors.black),
                              image: const DecorationImage(
                                  image: AssetImage('img/women.png'),
                                  fit: BoxFit.cover)),
                        ),
                        SizedBox(
                          height: h * 0.23,
                          width: w * 0.02,
                        ),
                        Container(
                            width: w * 0.46,
                            height: h * 0.23,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(h * 0.04),
                              border: Border.all(
                                  width: h * 0.003, color: Colors.black),
                            ),
                            child: Swiper(
                              itemCount: 3,
                              itemBuilder: ((context, index) {
                                final image = women[index];
                                return Container(
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(h * 0.04),
                                      color: const Color.fromARGB(255, 8, 8, 6),
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                          image,
                                        ),
                                      )),
                                );
                              }),
                              autoplay: true,
                              pagination: const SwiperPagination(
                                  alignment: Alignment.bottomCenter,
                                  builder: DotSwiperPaginationBuilder(
                                      color: Colors.white,
                                      activeColor:
                                          Color.fromARGB(255, 238, 241, 35))),
                            )),
                      ])),
                  SizedBox(
                    height: h * 0.02,
                  ),
                  Container(
                      padding:
                          EdgeInsets.only(left: w * 0.025, right: w * 0.025),
                      height: h * 0.25,
                      width: w,
                      color: Color.fromARGB(70, 243, 36, 36),
                      child: Row(children: [
                        Container(
                          width: w * 0.47,
                          height: h * 0.23,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(h * 0.04),
                              border: Border.all(
                                  width: h * 0.003, color: Colors.black),
                              image: const DecorationImage(
                                  image: AssetImage('img/bag.png'),
                                  fit: BoxFit.cover)),
                        ),
                        SizedBox(
                          height: h * 0.23,
                          width: w * 0.02,
                        ),
                        Container(
                            width: w * 0.46,
                            height: h * 0.23,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(h * 0.04),
                              border: Border.all(
                                  width: h * 0.003, color: Colors.black),
                            ),
                            child: Swiper(
                              itemCount: 3,
                              itemBuilder: ((context, index) {
                                final image = bag[index];
                                return Container(
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(h * 0.04),
                                      color: const Color.fromARGB(255, 8, 8, 6),
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                          image,
                                        ),
                                      )),
                                );
                              }),
                              autoplay: true,
                              pagination: const SwiperPagination(
                                  alignment: Alignment.bottomCenter,
                                  builder: DotSwiperPaginationBuilder(
                                      color: Colors.white,
                                      activeColor:
                                          Color.fromARGB(255, 238, 241, 35))),
                            )),
                      ])),
                  SizedBox(
                    height: h * 0.02,
                  ),
                  Container(
                      padding:
                          EdgeInsets.only(left: w * 0.025, right: w * 0.025),
                      height: h * 0.25,
                      width: w,
                      color: Color.fromARGB(70, 243, 36, 36),
                      child: Row(children: [
                        Container(
                          width: w * 0.47,
                          height: h * 0.23,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(h * 0.04),
                              border: Border.all(
                                  width: h * 0.003, color: Colors.black),
                              image: const DecorationImage(
                                  image: AssetImage('img/jew.png'),
                                  fit: BoxFit.cover)),
                        ),
                        SizedBox(
                          height: h * 0.23,
                          width: w * 0.02,
                        ),
                        Container(
                            width: w * 0.46,
                            height: h * 0.23,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(h * 0.04),
                              border: Border.all(
                                  width: h * 0.003, color: Colors.black),
                            ),
                            child: Swiper(
                              itemCount: 3,
                              itemBuilder: ((context, index) {
                                final image = women[index];
                                return Container(
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(h * 0.04),
                                      color: const Color.fromARGB(255, 8, 8, 6),
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                          image,
                                        ),
                                      )),
                                );
                              }),
                              autoplay: true,
                              pagination: const SwiperPagination(
                                  alignment: Alignment.bottomCenter,
                                  builder: DotSwiperPaginationBuilder(
                                      color: Colors.white,
                                      activeColor:
                                          Color.fromARGB(255, 238, 241, 35))),
                            )),
                      ])),
                  SizedBox(
                    height: h * 0.02,
                  ),
                  Container(
                      padding:
                          EdgeInsets.only(left: w * 0.025, right: w * 0.025),
                      height: h * 0.25,
                      width: w,
                      color: Color.fromARGB(70, 243, 36, 36),
                      child: Row(children: [
                        Container(
                          width: w * 0.47,
                          height: h * 0.23,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(h * 0.04),
                              border: Border.all(
                                  width: h * 0.003, color: Colors.black),
                              image: const DecorationImage(
                                  image: AssetImage('img/acc.png'),
                                  fit: BoxFit.cover)),
                        ),
                        SizedBox(
                          height: h * 0.23,
                          width: w * 0.02,
                        ),
                        Container(
                            width: w * 0.46,
                            height: h * 0.23,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(h * 0.04),
                              border: Border.all(
                                  width: h * 0.003, color: Colors.black),
                            ),
                            child: Swiper(
                              itemCount: 3,
                              itemBuilder: ((context, index) {
                                final image = acc[index];
                                return Container(
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(h * 0.04),
                                      color: const Color.fromARGB(255, 8, 8, 6),
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                          image,
                                        ),
                                      )),
                                );
                              }),
                              autoplay: true,
                              pagination: const SwiperPagination(
                                  alignment: Alignment.bottomCenter,
                                  builder: DotSwiperPaginationBuilder(
                                      color: Colors.white,
                                      activeColor:
                                          Color.fromARGB(255, 238, 241, 35))),
                            )),
                      ])),
                ],
              ),
            ),
          ),
        ));
  }
}
