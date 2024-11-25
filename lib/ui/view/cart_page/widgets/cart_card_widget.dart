import 'package:e_pazar_app/core/constants/color.dart';
import 'package:e_pazar_app/core/constants/icon_sizes.dart';
import 'package:e_pazar_app/core/utils/project_utility.dart';
import 'package:e_pazar_app/core/utils/screen_utility.dart';
import 'package:e_pazar_app/data/model/cart_product.dart';
import 'package:e_pazar_app/product/widgets/product_image.dart';
import 'package:e_pazar_app/ui/cubit/cart_page_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartCardWidget extends StatefulWidget {
  const CartCardWidget({
    super.key,
    required this.product,
  });

  final CartProduct product;

  @override
  State<CartCardWidget> createState() => _cartCardWidgetState();
}

class _cartCardWidgetState extends State<CartCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: Key(widget.product.id.toString()),
      direction: DismissDirection.endToStart,
      onDismissed: (direction) {
        //sepetten ürün sil
        context.read<CartPageCubit>().removeFromCart(widget.product);
        context.read<CartPageCubit>().loadProduct();
      },
      background: Container(
        decoration: ProjectUtility.cartDismissibleBoxDecoration,
        alignment: Alignment.centerRight,
        child: Padding(
          padding: EdgeInsets.only(right: 30),
          child: Icon(
            Icons.delete,
            color: AppColor.whiteColor,
            size: IconSizes.iconLarge,
          ),
        ),
      ),
      child: Card(
        color: AppColor.whiteColor,
        elevation: 1,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: ProductImage(
                      name: widget.product.image,
                      width: ScreenUtil.screenWidth(context) * 0.23,
                      height: ScreenUtil.screenHeight(context) * 0.2),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(widget.product.name,
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall
                            ?.copyWith(fontWeight: FontWeight.w900)),
                    Text(widget.product.brand,
                        style: Theme.of(context)
                            .textTheme
                            .titleSmall
                            ?.copyWith(color: AppColor.secondaryGrayColor)),
                    Text("₺${widget.product.price}",
                        style: Theme.of(context).textTheme.titleMedium),
                    Text("${"x"} ${widget.product.orderQuantity}",
                        style: Theme.of(context).textTheme.titleMedium),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                      onPressed: () {
                        context.read<CartPageCubit>().removeFromCart(widget.product);
                        context.read<CartPageCubit>().loadProduct();
                      },
                      icon: Icon(
                        Icons.delete,
                        size: IconSizes.iconLarge,
                        color: AppColor.primaryColor,
                      )),
                  Text(
                    "₺${(widget.product.price) * (widget.product.orderQuantity)}",
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge
                        ?.copyWith(fontWeight: FontWeight.bold),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
