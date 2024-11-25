import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:e_pazar_app/data/model/product.dart';
import 'package:e_pazar_app/data/model/product_repsonse.dart';

class ProductDaoRepository {
  List<Product> parseProduct(String cevap) {
    final decoded = json.decode(cevap) as Map<String, dynamic>;
    return ProductResponse.fromJson(decoded).products;
  }

  Future<List<Product>> loadProducts() async {
    const url = "http://kasimadalan.pe.hu/urunler/tumUrunleriGetir.php";
    final response = await Dio().get<dynamic>(url);
    return parseProduct(response.data.toString());
  }
}
