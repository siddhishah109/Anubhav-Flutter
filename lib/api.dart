import 'dart:convert';

import 'package:ecommerce/models/productsm.dart';

import 'package:http/http.dart' as http;

allproducts() async {
  final response =
      await http.get(Uri.parse('https://api.escuelajs.co/api/v1/products'));
  var data = ProductM.fromJson(response.body);
  if (response.statusCode == 200) {
    print(data);
  }

  //List templist = [];
  //for (var v in data) {
  // templist.add(v);
  //}
  //return ProductM.productsFromJson(templist);
}
