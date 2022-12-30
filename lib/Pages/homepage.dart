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
        backgroundColor: Color.fromARGB(78, 172, 206, 226),
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
          child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Container(
            height: h * 0.3,
            child: DrawerHeader(
                child: Container(
              child: Container(
                decoration: const BoxDecoration(color: Colors.amber),
              ),
            )),
          ),
        ],
      )),
    );
  }
}
