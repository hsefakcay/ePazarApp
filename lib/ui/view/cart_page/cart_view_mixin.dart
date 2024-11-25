import 'package:e_pazar_app/ui/cubit/cart_page_cubit.dart';
import 'package:e_pazar_app/ui/view/cart_page/cart_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

mixin CardViewMixin on State<CartView> {
  @override
  void initState() {
    super.initState();
    context.read<CartPageCubit>().loadProduct();
  }
}
