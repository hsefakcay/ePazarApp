class Product {
  final int id;
  final String name;
  final String image;
  final String category;
  final int price;
  final String brand;

  Product({
    required this.id,
    required this.name,
    required this.image,
    required this.category,
    required this.price,
    required this.brand,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      name: json['ad'],
      image: json['resim'],
      category: json['kategori'],
      price: json['fiyat'],
      brand: json['marka'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'ad': name,
      'resim': image,
      'kategori': category,
      'fiyat': price,
      'marka': brand,
    };
  }
}