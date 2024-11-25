import 'package:e_pazar_app/core/constants/color.dart';
import 'package:e_pazar_app/core/constants/language.dart';
import 'package:e_pazar_app/data/model/cart_product.dart';
import 'package:e_pazar_app/ui/cubit/cart_page_cubit.dart';
import 'package:e_pazar_app/ui/view/cart_page/cart_view_mixin.dart';
import 'package:e_pazar_app/ui/view/cart_page/widgets/cart_card_widget.dart';
import 'package:e_pazar_app/ui/view/cart_page/widgets/order_summary_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartView extends StatefulWidget {
  const CartView({super.key});
  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> with CardViewMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: _appBarTitleText(context)),
      backgroundColor: AppColor.whiteColor,
      body: BlocListener<CartPageCubit, List<CartProduct>>(
        listener: (context, state) {
          setState(() {});
        },
        child: BlocBuilder<CartPageCubit, List<CartProduct>>(
          builder: (context, cartProductList) {
            int totalCoast = cartProductList.fold(
                0, (sum, product) => sum + ((product.price) * (product.orderQuantity)));

            return Column(
              children: [
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: GridView.builder(
                    itemCount: cartProductList.length,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1,
                      childAspectRatio: 1 / 0.3,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 5,
                    ),
                    itemBuilder: (context, index) {
                      final product = cartProductList[index];
                      return CartCardWidget(product: product);
                    },
                  ),
                )),
                OrderSummaryWidget(totalCoast: totalCoast)
              ],
            );
          },
        ),
      ),
    );
  }

  Text _appBarTitleText(BuildContext context) {
    return Text(Language.cartTitle, style: Theme.of(context).textTheme.headlineSmall);
  }
}
