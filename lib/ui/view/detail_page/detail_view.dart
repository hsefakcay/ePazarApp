import 'package:e_pazar_app/core/constants/color.dart';
import 'package:e_pazar_app/core/utils/screen_utility.dart';
import 'package:e_pazar_app/data/model/cart_product.dart';
import 'package:e_pazar_app/data/model/product.dart';
import 'package:e_pazar_app/product/widgets/add_or_remove_button.dart';
import 'package:e_pazar_app/product/widgets/detail_chip.dart';
import 'package:e_pazar_app/product/widgets/product_image.dart';
import 'package:e_pazar_app/ui/cubit/cart_page_cubit.dart';
import 'package:e_pazar_app/ui/view/cart_page/cart_view.dart';
import 'package:e_pazar_app/ui/view/detail_page/detail_view_mixin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DetailView extends StatefulWidget {
  final Product product; // Immutable olmalı

  const DetailView({
    required this.product,
    Key? key,
  }) : super(key: key);

  @override
  State<DetailView> createState() => _DetailViewState();
}

class _DetailViewState extends State<DetailView> with DetailViewMixin {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.whiteColor,
      appBar: AppBar(
        backgroundColor: AppColor.whiteColor,
        centerTitle: true,
        title: Text(
          "Details product",
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Center(
              child: ProductImage(
                  width: ScreenUtil.screenHeight(context) * 0.5,
                  height: ScreenUtil.screenHeight(context) * 0.5,
                  name: widget.product.image),
            ),
            SizedBox(height: 10),
            _productDetails(context),
            _detailChips(),
            SizedBox(height: ScreenUtil.screenHeight(context) * 0.05),
            _totalPriceRow(
                ScreenUtil.screenWidth(context), ScreenUtil.screenHeight(context), context),
          ],
        ),
      ),
    );
  }

//siparişin toplam fiyatını gösteren text
  Row _totalPriceRow(double width, double height, BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Center(
          child: _orderQuantityRow(context),
        ),
        _addToCartButton(height, width, context)
      ],
    );
  }

// Sipariş adedini değiştirme butonları
  Widget? _orderQuantityRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AddOrRemoveButton(process: decrementOrderQuantity, icon: Icons.remove),
        Padding(
          padding: EdgeInsets.all(20.0),
          child: Text(
            "$siparisAdet",
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        AddOrRemoveButton(process: incrementOrderQuantity, icon: Icons.add),
      ],
    );
  }

  SizedBox _addToCartButton(double height, double width, BuildContext context) {
    return SizedBox(
      height: height * 0.08,
      width: width * 0.5,
      child: Expanded(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
          child: Text("Add to Cart",
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall
                  ?.copyWith(color: AppColor.whiteColor, fontWeight: FontWeight.bold)),
          onPressed: () {
            if (siparisAdet > 0) {
              //Sepete ekleme fonksiyonu ve sepet sayfasına gitme
              final cartItem = CartProduct(
                  id: widget.product.id,
                  name: widget.product.name,
                  image: widget.product.image,
                  category: widget.product.category,
                  price: widget.product.price,
                  brand: widget.product.brand,
                  orderQuantity: siparisAdet,
                  username: userName);
              context.read<CartPageCubit>().addToCart(cartItem);

              Navigator.push(
                context,
                MaterialPageRoute<CartView>(builder: (context) => const CartView()),
              );
            } else {
              _showSnackbar(context);
            }
          },
        ),
      ),
    );
  }

  // Snackbar gösterimi
  void _showSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(
        "snackBarTitleZeroOrder",
        style: Theme.of(context).textTheme.bodyMedium,
      ),
      behavior: SnackBarBehavior.fixed,
      duration: Durations.long4,
      backgroundColor: AppColor.primaryLightColor,
    ));
  }

  // Ürün bilgileri gösterimi
  Column _productDetails(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("${widget.product.name} - ${widget.product.brand}",
            style:
                Theme.of(context).textTheme.headlineLarge?.copyWith(fontWeight: FontWeight.bold)),
        Text("₺ ${widget.product.price}",
            style:
                Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold)),
      ],
    );
  }

  // Detay bilgilerini gösteren Chip'ler
  Row _detailChips() {
    return Row(
      children: [
        DetailChipWidget(text: "${widget.product.category}"),
      ],
    );
  }
}
