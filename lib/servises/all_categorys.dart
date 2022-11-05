import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:my/helper/api_manager.dart';
import 'package:my/models/products_model.dart';

class allCategorys {
  Future<List<dynamic>> getAllCategory() async {
    List<dynamic> data =
        await apimanager().get('https://fakestoreapi.com/products/categories');
    return data;
  }
}
