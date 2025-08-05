import 'dart:convert';

import 'package:aplikasi_pertama/models/Product.dart';
import 'package:http/http.dart' as http;

Future<List<Product>> getProduct() async {
  var url = Uri.parse('https://fakestoreapi.com/products');
  final response = await http.get(url);
  final List body = json.decode(response.body);
  return body.map((e) => Product.fromJson(e)).toList();
}