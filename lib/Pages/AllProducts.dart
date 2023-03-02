import 'dart:ui';
import 'package:ecommerce/models/productsm.dart';
import 'package:ecommerce/productCard.dart';
import 'package:http/http.dart' as http;
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
                'img/ic.png',
                height: 45,
                width: 45,
              ),
            ),
            const Spacer(),
            const Spacer(),
            const Spacer(),
            IconButton(
              onPressed: (() {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SearchPage()),
                );
              }),
              icon: const Icon(Icons.search),
              iconSize: w * 0.08,
            ),
            IconButton(
              onPressed: (() {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SearchPage()),
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
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('img/back.png'), fit: BoxFit.fill),
          ),
          child: SingleChildScrollView(
              child: GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 5,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 0,
                      mainAxisSpacing: 0,
                      childAspectRatio: 0.7),
                  itemBuilder: ((context, index) {
                    return const ProductCard();
                  }))),
        ));
  }
}
