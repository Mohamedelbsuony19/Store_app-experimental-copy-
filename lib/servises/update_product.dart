import '../helper/api_manager.dart';
import '../models/products_model.dart';

class updateProduct {
  Future<productModel> updateeProduct(
      {required String title,
      required String price,
      required String description,
      required String image,
      required int id}) async {
    Map<String, dynamic> data = await apimanager().Put(
      url:
          'https://fakestoreapi.com/products/$id', // https://fakestoreapi.com/products/:id
      body: {
        'title': title,
        'price': price,
        'description': description,
        'image': image,
      },
    );
    return productModel.fromjson(data);
  }
}
