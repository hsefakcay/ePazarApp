import 'package:e_pazar_app/ui/view/detail_page/detail_view.dart';
import 'package:flutter/material.dart';

mixin DetailViewMixin on State<DetailView> {
  int siparisAdet = 0;
  final String userName = "hsefakcay";

  bool isFavorite = false;

  void initState() {
    super.initState();
  }

  // Sipariş adedini artırma fonksiyonu
  void incrementOrderQuantity() {
    setState(() {
      siparisAdet++;
    });
  }

  void decrementOrderQuantity() {
    setState(() {
      if (siparisAdet > 0) {
        siparisAdet--;
      }
    });
  }
}
