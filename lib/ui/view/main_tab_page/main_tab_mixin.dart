import 'package:e_pazar_app/ui/view/home_page/home_view.dart';
import 'package:e_pazar_app/ui/view/main_tab_page/main_tab_view.dart';
import 'package:e_pazar_app/ui/view/profile_page/profile_page.dart';
import 'package:flutter/material.dart';

mixin MainTabMixin on State<MainPage> {
  late int currentIndex;
  final double notchValue = 8;

  @override
  void initState() {
    super.initState();
    currentIndex = widget.currentIndex;
  }

  final List<Widget> pages = [
    const HomeView(),
    const HomeView(),
    const ProfileView(),
  ];

  void onTabTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }
}
