import 'dart:ui';

import 'package:carousel_pro/carousel_pro.dart';
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
          IconButton(onPressed: (() {}), icon: Icon(Icons.shopping_cart))
        ],
      ),
      drawer: Drawer(
          backgroundColor: Color.fromARGB(255, 248, 243, 220),
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
                  color: Color.fromARGB(255, 248, 243, 220),
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
                color: Colors.amber,
              ),
              child: Center(
                child: ListView(
                  children: [
                    Container(
                      child: Carousel(
                        dotSize: 6,
                        dotSpacing: 15,
                        dotPosition: DotPosition.bottomCenter,
                        images: [
                          Image.asset(
                            "img/user.png",
                            fit: BoxFit.cover,
                          ),
                          Image.asset(
                            "img/user.png",
                            fit: BoxFit.cover,
                          ),
                          Image.asset(
                            "img/user.png",
                            fit: BoxFit.cover,
                          ),
                          Image.asset(
                            "img/user.png",
                            fit: BoxFit.cover,
                          ),
                          Image.asset(
                            "img/user.png",
                            fit: BoxFit.cover,
                          ),
                          Image.asset(
                            "img/user.png",
                            fit: BoxFit.cover,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ))
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
              onPressed: (() {}),
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
