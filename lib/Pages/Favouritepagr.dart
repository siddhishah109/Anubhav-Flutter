import 'package:ecommerce/Pages/searchpage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../providers/favourite_provider.dart';

class MyFavouriteItemScreen extends StatefulWidget {
  const MyFavouriteItemScreen({super.key});

  @override
  State<MyFavouriteItemScreen> createState() => _MyFavouriteItemScreenState();
}

class _MyFavouriteItemScreenState extends State<MyFavouriteItemScreen> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    final FavouriteProvider = Provider.of<FavouriteItemProvider>(context);
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
                  MaterialPageRoute(
                      builder: (context) => MyFavouriteItemScreen()),
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
              itemCount: FavouriteProvider.selectedItems.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 0,
                  childAspectRatio: 0.7,
                  mainAxisSpacing: 0),
              itemBuilder: ((context, index) {
                return Consumer<FavouriteItemProvider>(
                  builder: ((context, value, child) {
                    return Padding(
                      padding: const EdgeInsets.all(7.0),
                      child: Container(
                        padding: const EdgeInsets.all(1),
                        decoration: const BoxDecoration(
                            color: Color.fromARGB(38, 112, 4, 253),
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(30))),
                        child: Column(
                          children: [
                            Container(
                              height: h * 0.23,
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(30)),
                                  color: Color.fromARGB(255, 218, 205, 205),
                                  image: DecorationImage(
                                      image: AssetImage("img/s1.png"),
                                      fit: BoxFit.cover)),
                            ),
                            Container(
                              padding: const EdgeInsets.only(
                                  top: 1, left: 8, right: 8),
                              child: Row(
                                children: [
                                  Container(
                                    width: w * 0.29,
                                    // color: Colors.amber,
                                    child: Text(
                                      "Title",
                                      textAlign: TextAlign.left,
                                      style: GoogleFonts.pacifico(
                                          fontStyle: FontStyle.normal,
                                          fontSize: 25),
                                    ),
                                  ),
                                  IconButton(
                                    iconSize: 30,
                                    tooltip: 'Add to favorite',
                                    // color: _favIconColor,
                                    alignment: Alignment.topRight,
                                    icon: Icon(
                                        value.selectedItems.contains(index)
                                            ? Icons.favorite
                                            : Icons.favorite_border_outlined),
                                    onPressed: () {
                                      // setState(() {
                                      //   // if (_favIconColor == Colors.grey) {
                                      //   //   _favIconColor = Color.fromARGB(255, 255, 14, 134);
                                      //   // } else {
                                      //   //   _favIconColor = Colors.grey;
                                      //   // }
                                      // });

                                      if (value.selectedItems.contains(index)) {
                                        value.remove(index);
                                      } else {
                                        value.addItems(index);
                                      }

                                      setState(() {});
                                    },
                                  )
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                Container(
                                  width: w * 0.43,
                                  child: Text(
                                    "\$108",
                                    textAlign: TextAlign.right,
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                    ;
                  }),
                );
              }),
            ))));
  }
}
