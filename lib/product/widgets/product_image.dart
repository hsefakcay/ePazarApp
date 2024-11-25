import 'package:flutter/material.dart';

class ProductImage extends StatelessWidget {
  const ProductImage({
    super.key,
    required this.name,
    required this.width,
    required this.height,
  });

  final String name;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Image(
        fit: BoxFit.fitHeight,
        height: height,
        width: width,
        image: NetworkImage("http://kasimadalan.pe.hu/urunler/resimler/${name}"));
  }
}
