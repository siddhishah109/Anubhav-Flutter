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
        child: Column(children: [
          SizedBox(
            height: h * 0.01,
          ),
          Container(
            height: h * 0.2,
            width: w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(h * 0.05),
                image: DecorationImage(
                    image: AssetImage('img/cat1.PNG'), fit: BoxFit.fill)),
          ),
          Container(
            height: h * 0.2,
            width: w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(h * 0.05),
                image: DecorationImage(
                    image: AssetImage('img/cat2.PNG'), fit: BoxFit.fill)),
          ),
          Container(
            height: h * 0.2,
            width: w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(h * 0.05),
                image: DecorationImage(
                    image: AssetImage('img/cat5.png'), fit: BoxFit.fill)),
          ),
          Container(
            height: h * 0.2,
            width: w,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 253, 182, 182),
                borderRadius: BorderRadius.circular(h * 0.05),
                image: DecorationImage(
                    image: AssetImage('img/cat4.png'), fit: BoxFit.fill)),
          ),
          Container(
            height: h * 0.2,
            width: w,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 241, 225, 174),
              borderRadius: BorderRadius.circular(h * 0.05),
              image: DecorationImage(
                  image: AssetImage('img/cat3.png'), fit: BoxFit.fill),
            ),
          ),
        ]),
      )),
    );
  }
}
