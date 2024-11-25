import 'package:e_pazar_app/core/utils/screen_utility.dart';
import 'package:e_pazar_app/data/model/product.dart';
import 'package:e_pazar_app/ui/cubit/home_page_cubit.dart';
import 'package:e_pazar_app/ui/view/home_page/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

mixin HomeViewMixin on State<HomeView> {
  @override
  void initState() {
    super.initState();
    context.read<HomePageCubit>().loadProduct();
  }

  double getWidth() {
    return ScreenUtil.screenWidth(context);
  }

  void sortNameFood(List<Product> yemeklerListesi, bool isDesc) {
    Comparator<Product> sortName;
    if (isDesc == true) {
      sortName = (a, b) => a.name.compareTo(b.name);
    } else {
      sortName = (a, b) => b.name.compareTo(a.name);
    }
    yemeklerListesi.sort(sortName);
  }

  void sortCountFood(List<Product> yemeklerListesi, bool isDesc) {
    Comparator<Product> sortName;

    if (isDesc == true) {
      sortName = (a, b) => (a.price.compareTo(b.price));
    } else {
      sortName = (a, b) => (b.price.compareTo(a.price));
    }
    yemeklerListesi.sort(sortName);
  }

  void sortFoods(String? sortType, List<Product> foodsList) {
    if (sortType != null) {
      setState(() {
        if (sortType == "sortByPriceAscending") {
          sortCountFood(foodsList, true);
        } else if (sortType == "sortByPriceDescending") {
          sortCountFood(foodsList, false);
        } else if (sortType == "sortByAlphabeticalAscending") {
          sortNameFood(foodsList, true);
        } else if (sortType == "sortByAlphabeticalDescending") {
          sortNameFood(foodsList, false);
        }
      });
    }
  }
}
