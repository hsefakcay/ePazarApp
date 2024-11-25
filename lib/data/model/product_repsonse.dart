import 'package:e_pazar_app/data/model/product.dart';

class ProductResponse {
  List<Product> products;
  int success;

  ProductResponse({required this.products, required this.success});

  factory ProductResponse.fromJson(Map<String, dynamic> json) {
    List<dynamic> jsonArray = json["urunler"] as List;
    int success = json["success"] as int;

    List<Product> productList = (jsonArray)
        .map((jsonArrayObject) => Product.fromJson(jsonArrayObject as Map<String, dynamic>))
        .toList();

    return ProductResponse(products: productList, success: success);
  }
}
