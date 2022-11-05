import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:my/helper/api_manager.dart';
import 'package:my/models/products_model.dart';

class getCtegory {
  Future<List<productModel>> getAllProducts(
      {required String category_name}) async {
  List<dynamic> bodyJson =await apimanager().get('https://fakestoreapi.com/products/category/$category_name');
  List<productModel> productsList = [];
  for (int i = 0; i < bodyJson.length; i++) {
    productsList.add(productModel.fromjson(bodyJson[i]));
  }
  return productsList;
  }
}
