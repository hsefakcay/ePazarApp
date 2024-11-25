import 'package:e_pazar_app/data/model/cart_product.dart';
import 'package:e_pazar_app/data/repo/cart_productdao_repository.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class CartPageCubit extends Cubit<List<CartProduct>> {
  CartPageCubit() : super(<CartProduct>[]);

  //cartProductRepo =  cart product Dao Repo nesnesi
  var cartProductRepo = CartProductdaoRepository();

  Future<void> loadProduct() async {
    var list = await cartProductRepo.loadCartFoods();
    emit(list);
  }

  Future<void> addToCart(CartProduct productToAdd) async {
    await cartProductRepo.addToCart(productToAdd);
    await loadProduct();
  }

  Future<void> removeFromCart(CartProduct productToAdd) async {
    await cartProductRepo.removeFromCart(productToAdd);
    await loadProduct();
  }
}
