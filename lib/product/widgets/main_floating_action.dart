import 'package:e_pazar_app/core/constants/color.dart';
import 'package:e_pazar_app/core/constants/icon_sizes.dart';
import 'package:e_pazar_app/ui/cubit/cart_page_cubit.dart';
import 'package:e_pazar_app/ui/view/cart_page/cart_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainFloatingActionButton extends StatelessWidget {
  const MainFloatingActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      foregroundColor: AppColor.whiteColor,
      backgroundColor: AppColor.primaryColor,
      onPressed: () {
        Navigator.push(context, MaterialPageRoute<CartView>(builder: (context) => const CartView()))
            .then(
          (value) {
            context.read<CartPageCubit>().loadProduct();
          },
        );
      },
      child: const Icon(
        Icons.shopping_cart_sharp,
        size: IconSizes.iconLarge,
      ),
    );
  }
}
