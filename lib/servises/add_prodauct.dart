import 'package:my/helper/api_manager.dart';
import 'package:my/models/products_model.dart';

class AddProduct {
  Future<productModel> addProduct(
      {required String title,
      required String price,
      required String description,
      required String image,
      required String category}) async {
    Map<String, dynamic> data = await apimanager().post(
      url: 'https://fakestoreapi.com/products',
      body: {
        'title': title,
        'price': price,
        'description': description,
        'image': image,
        'category': category
      },
    );
    return productModel.fromjson(data);
  }
}
