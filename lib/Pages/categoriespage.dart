import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

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
        ),
        backgroundColor: const Color.fromARGB(78, 172, 206, 226),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: h * 0.02,
              ),
              Container(
                  padding: EdgeInsets.only(left: w * 0.025, right: w * 0.025),
                  height: h * 0.25,
                  width: w,
                  color: Color.fromARGB(255, 255, 154, 154),
                  // decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.circular(h * 0.05),
                  //     image: DecorationImage(
                  //         image: AssetImage('img/cat1.PNG'), fit: BoxFit.fill)),
                  child: Row(children: [
                    Container(
                      width: w * 0.47,
                      height: h * 0.23,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(h * 0.04),
                          border:
                              Border.all(width: h * 0.003, color: Colors.black),
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
                        border:
                            Border.all(width: h * 0.003, color: Colors.black),
                        // image: DecorationImage(
                        //     image: AssetImage('img/shoesicon.png'),
                        //     fit: BoxFit.cover)
                      ),
                      // child: CarouselSlider( options: CarouselOptions(
                      //   autoPlay: true,
                      // ),
                      // items:imageList.map(
                      //   (item)
                      // ),

                      // ),
                    ),
                  ])),
              SizedBox(
                height: h * 0.02,
              ),
              Container(
                  padding: EdgeInsets.only(left: w * 0.025, right: w * 0.025),
                  height: h * 0.25,
                  width: w,
                  color: Colors.amber,
                  // decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.circular(h * 0.05),
                  //     image: DecorationImage(
                  //         image: AssetImage('img/cat1.PNG'), fit: BoxFit.fill)),
                  child: Row(children: [
                    Container(
                      width: w * 0.47,
                      height: h * 0.23,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(h * 0.04),
                          border:
                              Border.all(width: h * 0.003, color: Colors.black),
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
                        border:
                            Border.all(width: h * 0.003, color: Colors.black),
                      ),
                    ),
                  ])),
              SizedBox(
                height: h * 0.02,
              ),
              Container(
                  padding: EdgeInsets.only(left: w * 0.025, right: w * 0.025),
                  height: h * 0.25,
                  width: w,
                  color: Colors.amber,
                  // decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.circular(h * 0.05),
                  //     image: DecorationImage(
                  //         image: AssetImage('img/cat1.PNG'), fit: BoxFit.fill)),
                  child: Row(children: [
                    Container(
                      width: w * 0.47,
                      height: h * 0.23,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(h * 0.04),
                          border:
                              Border.all(width: h * 0.003, color: Colors.black),
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
                        border:
                            Border.all(width: h * 0.003, color: Colors.black),
                      ),
                    ),
                  ])),
              SizedBox(
                height: h * 0.02,
              ),
              Container(
                  padding: EdgeInsets.only(left: w * 0.025, right: w * 0.025),
                  height: h * 0.25,
                  width: w,
                  color: Colors.amber,
                  child: Row(children: [
                    Container(
                      width: w * 0.47,
                      height: h * 0.23,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(h * 0.04),
                          border:
                              Border.all(width: h * 0.003, color: Colors.black),
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
                        border:
                            Border.all(width: h * 0.003, color: Colors.black),
                      ),
                    ),
                  ])),
              SizedBox(
                height: h * 0.02,
              ),
              Container(
                  padding: EdgeInsets.only(left: w * 0.025, right: w * 0.025),
                  height: h * 0.25,
                  width: w,
                  color: Colors.amber,
                  child: Row(children: [
                    Container(
                      width: w * 0.47,
                      height: h * 0.23,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(h * 0.04),
                          border:
                              Border.all(width: h * 0.003, color: Colors.black),
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
                        border:
                            Border.all(width: h * 0.003, color: Colors.black),
                      ),
                    ),
                  ])),
              SizedBox(
                height: h * 0.02,
              ),
              Container(
                  padding: EdgeInsets.only(left: w * 0.025, right: w * 0.025),
                  height: h * 0.25,
                  width: w,
                  color: Colors.amber,
                  // decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.circular(h * 0.05),
                  //     image: DecorationImage(
                  //         image: AssetImage('img/cat1.PNG'), fit: BoxFit.fill)),
                  child: Row(children: [
                    Container(
                      width: w * 0.47,
                      height: h * 0.23,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(h * 0.04),
                          border:
                              Border.all(width: h * 0.003, color: Colors.black),
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
                        border:
                            Border.all(width: h * 0.003, color: Colors.black),
                      ),
                    ),
                  ])),
            ],
          ),
        ),
      ),
    );
  }
}
