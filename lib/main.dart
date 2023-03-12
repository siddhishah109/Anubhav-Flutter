import 'package:ecommerce/Pages/AllProducts.dart';
import 'package:ecommerce/Pages/categoriespage.dart';
import 'package:ecommerce/Pages/homepage.dart';
import 'package:ecommerce/Pages/products.dart';
import 'package:ecommerce/providers/favourite_provider.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Pages/searchpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Provider:
    [ChangeNotifierProvider(create: (_) => FavouriteItemProvider())];
    return MaterialApp(
        theme: ThemeData(
            primaryColor: const Color.fromARGB(78, 172, 206, 226),
            bottomAppBarTheme: const BottomAppBarTheme(
                // color: Color.fromARGB(78, 172, 206, 226),

                )),
        home: AllProducts());
  }
}
