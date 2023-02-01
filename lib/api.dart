import 'dart:convert';

import 'package:ecommerce/models/productsm.dart';

import 'package:http/http.dart' as http;

class Api {
  Future<ProductM> allproducts() async {
    final response =
        await http.get(Uri.parse('https://api.escuelajs.co/api/v1/products'));
    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      return ProductM.fromJson(data);
    } else {
      return ProductM.fromJson(data);
    }
  }
}
