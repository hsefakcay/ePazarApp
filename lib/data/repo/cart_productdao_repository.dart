import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:e_pazar_app/data/model/cart_product.dart';
import 'package:e_pazar_app/data/model/cart_product_response.dart';

class CartProductdaoRepository {
  List<CartProduct> parseCartProduct(String response) {
    final decoded = json.decode(response) as Map<String, dynamic>;
    return CartProductResponse.fromJson(decoded).cartProducts;
  }

  Future<void> addToCart(CartProduct cartProduct) async {
    var url = "http://kasimadalan.pe.hu/urunler/sepeteUrunEkle.php";
    var data = {
      "ad": cartProduct.name,
      "resim": cartProduct.image,
      "kategori": cartProduct.category,
      "fiyat": cartProduct.price,
      "marka": cartProduct.brand,
      "siparisAdeti": cartProduct.orderQuantity,
      "kullaniciAdi": cartProduct.username
    };
    await Dio().post<dynamic>(url, data: FormData.fromMap(data));
  }

  Future<void> removeFromCart(CartProduct productToDelete) async {
    var url = "http://kasimadalan.pe.hu/urunler/sepettenUrunSil.php";
    var data = {
      "sepetId": productToDelete.id,
      "kullaniciAdi": productToDelete.username,
    };
    await Dio().post<String>(url, data: FormData.fromMap(data));
  }

  Future<List<CartProduct>> loadCartFoods() async {
    const url = 'http://kasimadalan.pe.hu/urunler/sepettekiUrunleriGetir.php';
    final userId = {'kullaniciAdi': 'hsefakcay'};

    try {
      // Dio ile POST isteği gönderiliyor
      var response = await Dio().post<dynamic>(
        url,
        data: FormData.fromMap(userId),
      );

      // HTTP durumu 200 ise yanıt işleniyor
      if (response.statusCode == 200) {
        // Gelen yanıtın JSON formatına dönüştürülmesi
        if (response.data is String) {
          // Eğer veri String ise JSON parse yapılıyor
          var jsonData = json.decode(response.data);
          if (jsonData['success'] == 1 && jsonData['urunler_sepeti'] != null) {
            return parseCartProduct(response.data.toString());
          } else {
            print("Sepet boş ya da kullanıcının sepeti bulunamadı.");
          }
        } else if (response.data is Map<String, dynamic>) {
          // Eğer veri zaten Map ise doğrudan işleniyor
          var jsonData = response.data as Map<String, dynamic>;
          if (jsonData['success'] == 1 && jsonData['urunler_sepeti'] != null) {
            return parseCartProduct(response.data.toString());
          } else {
            print("Sepet boş ya da kullanıcının sepeti bulunamadı.");
          }
        } else {
          print("Beklenmeyen veri formatı: ${response.data.runtimeType}");
        }
      } else {
        print("HTTP isteği başarısız oldu. Kod: ${response.statusCode}");
      }
    } catch (e) {
      print("Bir hata oluştu: $e");
    }

    // Eğer bir sorun varsa boş bir liste döndürülüyor
    return [];
  }
}
