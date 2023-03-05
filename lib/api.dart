// https://fakestoreapi.com/product
import 'dart:convert';

import 'package:ecommerce/models/productsm.dart';
import 'package:http/http.dart' as http;

List<products> postList = [];
Future<List<products>> getPostApi() async {
  final response =
      await http.get(Uri.parse('https://fakestoreapi.com/product'));
  var data = jsonDecode(response.body.toString());
  if (response.statusCode == 200) {
    for (Map a in data) {
      postList.add(products.fromJson(a));
    }
    return postList;
  } else {
    return postList;
  }
}
