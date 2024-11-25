import 'package:e_pazar_app/data/model/product.dart';
import 'package:e_pazar_app/data/repo/productdao_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePageCubit extends Cubit<List<Product>> {
  HomePageCubit() : super(<Product>[]);

  //productRepo = product Dao Repo nesnesi
  var productRepo = ProductDaoRepository();

  Future<void> loadProduct() async {
    var list = await productRepo.loadProducts();
    emit(list);
  }

  Future<void> searchProduct(String query) async {
    var list = await productRepo.loadProducts();

    if (query.isEmpty) {
      emit(list);
    } else {
      final filteredList = list.where((product) {
        return product.name.toLowerCase().contains(query.toLowerCase());
      }).toList();
      emit(filteredList);
    }
  }
}
