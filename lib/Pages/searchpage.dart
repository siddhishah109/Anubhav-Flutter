import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SearchPage extends StatelessWidget {
  SearchPage({super.key});
  final fieldText = TextEditingController();
  void clearText() {
    fieldText.clear();
  }

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
        title: Container(
          height: h * 0.05,
          width: w * 0.8,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: null),
          child: Center(
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(borderSide: BorderSide.none),
                fillColor: Colors.white,
                prefixIcon: Icon(Icons.search),
                suffixIcon:
                    IconButton(onPressed: (clearText), icon: Icon(Icons.clear)),
                hintText: 'Search by Product',
                contentPadding: EdgeInsets.all(w * 0.02),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
