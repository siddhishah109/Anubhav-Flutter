import 'dart:ui';

import 'package:ecommerce/Pages/searchpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AllProducts extends StatefulWidget {
  const AllProducts({super.key});

  @override
  State<AllProducts> createState() => _AllProductsState();
}

class _AllProductsState extends State<AllProducts> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(78, 172, 206, 226),
          leading: IconButton(
            onPressed: (() {
              Navigator.pop(context);
            }),
            icon: const Icon(Icons.arrow_back),
            iconSize: w * 0.08,
          ),
          actions: [
            const Spacer(
              flex: 1,
            ),
            ClipOval(
              child: Image.asset(
                'img/anubhavicon.png',
                height: 45,
                width: 45,
              ),
            ),
            const Spacer(),
            const Spacer(),
            const Spacer(),
            IconButton(
              onPressed: (() => const SearchPage()),
              icon: const Icon(Icons.search),
              iconSize: w * 0.08,
            ),
            IconButton(
              onPressed: (() {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SearchPage()),
                );
              }),
              icon: const Icon(Icons.favorite),
              color: const Color.fromARGB(255, 244, 54, 117),
              iconSize: w * 0.08,
            ),
            IconButton(
              onPressed: (() {}),
              icon: const Icon(Icons.shopping_cart),
              iconSize: w * 0.07,
            )
          ],
        ),
        body: SingleChildScrollView(
          child: GridTile(
              child: Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              padding: EdgeInsets.all(w * 0.01),
              width: w * 0.48,
              height: h * 0.3,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.amber),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(18)),
                    height: h * 0.22,
                    width: w * 0.45,

                    //img
                  ),
                  Container(
                      padding: EdgeInsets.only(left: h * 0.01),
                      child: Row(
                        children: [
                          Text(
                            'shoes       ',
                            style: TextStyle(
                              fontSize: 25,
                            ),
                          ),
                          Text(
                            '400',
                            textAlign: TextAlign.end,
                            style: TextStyle(
                              fontSize: 25,
                            ),
                          ),
                        ],
                      )

                      //title
                      ),
                  Container(
                      //rating
                      )
                ],
              ),
            ),
          )),
        ));
  }
}
