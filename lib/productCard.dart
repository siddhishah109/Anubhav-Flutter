// import 'dart:ffi';

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:google_fonts/google_fonts.dart';

// class ProductCard extends StatefulWidget {
//   const ProductCard({super.key});

//   @override
//   State<ProductCard> createState() => _ProductCardState();
// }

// class _ProductCardState extends State<ProductCard> {
//   Color _favIconColor = Colors.grey;

//   @override
//   Widget build(BuildContext context) {
//     double h = MediaQuery.of(context).size.height;
//     double w = MediaQuery.of(context).size.width;

//     return Padding(
//       padding: const EdgeInsets.all(7.0),
//       child: Container(
//         padding: const EdgeInsets.all(1),
//         decoration: const BoxDecoration(
//             color: Color.fromARGB(38, 112, 4, 253),
//             borderRadius: BorderRadius.only(topRight: Radius.circular(30))),
//         child: Column(
//           children: [
//             Container(
//               height: h * 0.23,
//               decoration: const BoxDecoration(
//                   borderRadius:
//                       BorderRadius.only(topRight: Radius.circular(30)),
//                   color: Color.fromARGB(255, 218, 205, 205),
//                   image: DecorationImage(
//                       image: AssetImage("img/s1.png"), fit: BoxFit.cover)),
//             ),
//             Container(
//               padding: const EdgeInsets.only(top: 1, left: 8, right: 8),
//               child: Row(
//                 children: [
//                   Container(
//                     width: w * 0.29,
//                     // color: Colors.amber,
//                     child: Text(
//                       "Title",
//                       textAlign: TextAlign.left,
//                       style: GoogleFonts.pacifico(
//                           fontStyle: FontStyle.normal, fontSize: 25),
//                     ),
//                   ),
//                   IconButton(
//                     iconSize: 30,
//                     tooltip: 'Add to favorite',
//                     color: _favIconColor,
//                     alignment: Alignment.topRight,
//                     icon: const Icon(Icons.favorite),
//                     onPressed: () {
//                       setState(() {
//                         if (_favIconColor == Colors.grey) {
//                           _favIconColor = Color.fromARGB(255, 255, 14, 134);
//                         } else {
//                           _favIconColor = Colors.grey;
//                         }
//                       });
//                     },
//                   )
//                 ],
//               ),
//             ),
//             Row(
//               children: [
//                 Container(
//                   width: w * 0.43,
//                   child: Text(
//                     "\$108",
//                     textAlign: TextAlign.right,
//                     style: TextStyle(fontSize: 20),
//                   ),
//                 ),
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
