import 'dart:convert';
import 'package:my/helper/api_manager.dart';
import 'package:my/models/products_model.dart';
import 'package:http/http.dart' as http;

class allProducts {
  Future<List<productModel>> getAllProducts() async {
  List<dynamic> bodyJson=await apimanager().get('https://fakestoreapi.com/products');
  List<productModel> productsList = [];
  for (int i = 0; i < bodyJson.length; i++) {
    productsList.add(productModel.fromjson(bodyJson[i]));
  }
  return productsList;
  }
}
