import 'package:e_pazar_app/data/model/cart_product.dart';

class CartProductResponse {
  List<CartProduct> cartProducts;
  int success;

  CartProductResponse({required this.cartProducts, required this.success});

  factory CartProductResponse.fromJson(Map<String, dynamic> json) {
    List<dynamic> jsonArray = json["urunler_sepeti"] as List;
    int success = json["success"] as int;

    List<CartProduct> productList = (jsonArray)
        .map((jsonArrayObject) => CartProduct.fromJson(jsonArrayObject as Map<String, dynamic>))
        .toList();

    return CartProductResponse(cartProducts: productList, success: success);
  }
}
