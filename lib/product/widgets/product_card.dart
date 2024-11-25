import 'package:e_pazar_app/core/constants/color.dart';
import 'package:e_pazar_app/core/utils/screen_utility.dart';
import 'package:e_pazar_app/data/model/product.dart';
import 'package:e_pazar_app/product/widgets/product_image.dart';
import 'package:e_pazar_app/ui/view/detail_page/detail_view.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatefulWidget {
  final Product product;

  const ProductCard({
    super.key,
    required this.product,
  });

  @override
  State<ProductCard> createState() => _FoodCardState();
}

class _FoodCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      color: AppColor.whiteColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 5),
          ProductImage(
              width: ScreenUtil.screenWidth(context) * 0.35,
              height: ScreenUtil.screenHeight(context) * 0.2,
              name: widget.product.image),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${widget.product.name}",
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(fontSize: 20, fontWeight: FontWeight.normal),
                ),
                Text(
                  "₺${widget.product.price}.00",
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute<DetailView>(
                          builder: (context) => DetailView(product: widget.product)),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Text(
                      "Add to cart",
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(fontWeight: FontWeight.normal, color: AppColor.whiteColor),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
