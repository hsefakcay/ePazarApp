class CartProduct {
  final int id;
  final String name;
  final String image;
  final String category;
  final int price;
  final String brand;
  final int orderQuantity;
  final String username;

  CartProduct({
    required this.id,
    required this.name,
    required this.image,
    required this.category,
    required this.price,
    required this.brand,
    required this.orderQuantity,
    required this.username,
  });

  factory CartProduct.fromJson(Map<String, dynamic> json) {
    return CartProduct(
      id: json['sepetId'],
      name: json['ad'],
      image: json['resim'],
      category: json['kategori'],
      price: json['fiyat'],
      brand: json['marka'],
      orderQuantity: json['siparisAdeti'],
      username: json['kullaniciAdi'],
    );
  }
}
