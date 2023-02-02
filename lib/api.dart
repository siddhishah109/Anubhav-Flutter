import 'dart:convert';

import 'package:ecommerce/models/productsm.dart';

import 'package:http/http.dart' as http;

class Api {
   Future<void> allproducts() async {
    final response =
        await http.get(Uri.parse('https://api.escuelajs.co/api/v1/products'));
    var data = jsonDecode(response.body);
    //List templist = [];
    //for (var v in data) {
     // templist.add(v);
    //}
    //return ProductM.productsFromJson(templist);
  }
}
