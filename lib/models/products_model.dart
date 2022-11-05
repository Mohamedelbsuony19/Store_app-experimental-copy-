class productModel{
  final int id;
  final String tittle;
  final dynamic price;
  final String image;
  final RatingModel rating;

  productModel({
  required this.id,
  required this.image,
  required this.price,
  required this.tittle,
  required this.rating
  });

  factory productModel.fromjson(jsonData){
    return productModel(
      id: jsonData['id'],
      image: jsonData['image'],
      price: jsonData['price'],
      tittle: jsonData['title'],
      rating: RatingModel.fromjson(jsonData['rating'])
      );
      
  }
}
class RatingModel{
  dynamic rate;
  int count;
  RatingModel({
    required this.count,
    required this.rate
  });
  factory RatingModel.fromjson(jsonData){
    return RatingModel(
      count:jsonData['count'] ,
      rate: jsonData['rate']);
  }
}