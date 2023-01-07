import 'dart:ui';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce/Pages/categoriespage.dart';

import 'package:ecommerce/Pages/searchpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    final List<String> imgList = [
      'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
      'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
      'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
      'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
      'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
      'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(78, 172, 206, 226),
        actions: [
          IconButton(
              onPressed: (() => const SearchPage()),
              icon: const Icon(Icons.search)),
          IconButton(
            onPressed: (() {}),
            icon: Icon(Icons.favorite),
          ),
          IconButton(onPressed: (() {}), icon: const Icon(Icons.shopping_cart))
        ],
      ),
      drawer: Drawer(
          backgroundColor: Color.fromARGB(255, 241, 241, 232),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Container(
                height: h * 0.4,
                width: w * 0.8,
                child: DrawerHeader(
                    child: Container(
                  padding: EdgeInsets.all(5),
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      color: Color.fromARGB(255, 210, 214, 214)),
                  child: Container(
                      padding: EdgeInsets.all(20),
                      height: h * 0.3,
                      width: w * 0.7,
                      child: ListView(
                        children: [
                          Container(
                            child: const CircleAvatar(
                              radius: 60,
                              backgroundColor: Colors.black,
                              child: Icon(
                                Icons.person,
                                color: Colors.white,
                                size: 70,
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: h * 0.02),
                            child: const Text(
                              'Siddhi Shah',
                              style: TextStyle(fontSize: 25),
                            ),
                          ),
                          Container(
                            child: const Text(
                              '+91-1234567890',
                              style: TextStyle(
                                  fontSize: 17,
                                  color: Color.fromARGB(169, 37, 38, 39)),
                            ),
                          ),
                        ],
                      )),
                )),
              ),
              ListTile(
                contentPadding: EdgeInsets.only(left: w * 0.05),
                leading: const Icon(
                  Icons.category_outlined,
                  size: 27,
                ),
                title: const Text(
                  "Categories",
                  style: TextStyle(fontSize: 15),
                ),
                onTap: (() {
                  const Categories();

                  // open categories
                }),
              ),
              ListTile(
                contentPadding: EdgeInsets.only(left: w * 0.05),
                leading: const Icon(
                  Icons.shopping_bag_outlined,
                  size: 27,
                ),
                title: const Text(
                  "Orders",
                  style: TextStyle(fontSize: 15),
                ),
                onTap: (() {
                  // open orders
                }),
              ),
              ListTile(
                contentPadding: EdgeInsets.only(left: w * 0.05),
                leading: const Icon(
                  Icons.account_balance_wallet_outlined,
                  size: 27,
                ),
                title: const Text(
                  "Wallet",
                  style: TextStyle(fontSize: 15),
                ),
                onTap: (() {
                  // open categories
                }),
              ),
              ListTile(
                contentPadding: EdgeInsets.only(left: w * 0.05),
                leading: const Icon(
                  Icons.local_offer_outlined,
                  size: 27,
                ),
                title: const Text(
                  "My Offers",
                  style: TextStyle(fontSize: 15),
                ),
                onTap: (() {
                  // open categories
                }),
              ),
              SizedBox(
                height: h * 0.16,
                child: Container(
                  color: Color.fromARGB(255, 241, 241, 232),
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.only(left: w * 0.05),
                leading: const Icon(
                  Icons.contact_support_outlined,
                  size: 25,
                ),
                title: const Text(
                  "Contact Us",
                  style: TextStyle(fontSize: 15),
                ),
                onTap: (() {
                  // open contact
                }),
              ),
              ListTile(
                contentPadding: EdgeInsets.only(left: w * 0.05),
                leading: const Icon(
                  Icons.logout,
                  size: 25,
                ),
                title: const Text(
                  "LogOut",
                  style: TextStyle(fontSize: 15),
                ),
                onTap: (() {
                  // open orders
                }),
              ),
            ],
          )),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Container(
              padding: const EdgeInsets.only(top: 5),
              height: h * 0.1,
              width: w,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    padding: const EdgeInsets.all(12),
                    child: FloatingActionButton(
                      onPressed: (() {}),
                      elevation: 0,
                      backgroundColor: const Color.fromARGB(255, 27, 27, 26),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(12),
                    child: FloatingActionButton(
                      onPressed: (() {}),
                      elevation: 0,
                      backgroundColor: const Color.fromARGB(255, 27, 27, 26),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(12),
                    child: FloatingActionButton(
                      onPressed: (() {}),
                      elevation: 0,
                      backgroundColor: const Color.fromARGB(255, 27, 27, 26),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(12),
                    child: FloatingActionButton(
                      onPressed: (() {}),
                      elevation: 0,
                      backgroundColor: const Color.fromARGB(255, 27, 27, 26),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(12),
                    child: FloatingActionButton(
                      onPressed: (() {}),
                      elevation: 0,
                      backgroundColor: const Color.fromARGB(255, 27, 27, 26),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(12),
                    child: FloatingActionButton(
                      onPressed: (() {}),
                      elevation: 0,
                      backgroundColor: const Color.fromARGB(255, 27, 27, 26),
                    ),
                  ),
                ],
              )),
          Container(
              height: h * 0.25,
              width: w * 0.9,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(h * 0.06),
                color: Colors.transparent,
              ),
              child: Center(
                  child: CarouselSlider(
                options: CarouselOptions(
                  autoPlay: true,
                  aspectRatio: 2.0,
                  enlargeCenterPage: true,
                ),
                items: imgList
                    .map((item) => Container(
                          child: Center(
                              child: Image.network(
                            item,
                            fit: BoxFit.cover,
                            width: w * 0.8,
                            height: h * 0.25,
                          )),
                        ))
                    .toList(),
              ))),
          Container()
        ],
      )),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          color: Color.fromARGB(78, 172, 206, 226),
        ),
        height: h * 0.07,
        child: BottomAppBar(
            child: Row(
          children: [
            IconButton(
              onPressed: (() {}),
              icon: const Icon(Icons.home),
              iconSize: 30,
            ),
            Spacer(),
            IconButton(
              onPressed: (() {
                Categories();
              }),
              icon: const Icon(Icons.category_outlined),
              iconSize: 30,
            ),
            Spacer(),
            IconButton(
              onPressed: (() {}),
              icon: const Icon(Icons.person),
              iconSize: 30,
            ),
            Spacer(),
            IconButton(
              onPressed: (() {}),
              icon: const Icon(Icons.account_balance_wallet_outlined),
              iconSize: 30,
            ),
            Spacer(),
            IconButton(
              onPressed: (() {}),
              icon: const Icon(Icons.shopping_bag_outlined),
              iconSize: 30,
            ),
          ],
        )),
      ),
    );
  }
}
