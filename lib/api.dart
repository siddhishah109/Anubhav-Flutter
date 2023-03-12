// https://fakestoreapi.com/product
import 'dart:convert';

import 'package:ecommerce/models/productsm.dart';
// ignore: depend_on_referenced_packages
import 'package:http/http.dart' as http;

Future<products> getPostApi() async {
  final response =
      await http.get(Uri.parse('https://fakestoreapi.com/product'));
  var data = products.fromJson(jsonDecode(jsonEncode(response.body)));
  if (response.statusCode == 200) {
    print(data);

    return data;
  } else {
    return data;
  }
}
