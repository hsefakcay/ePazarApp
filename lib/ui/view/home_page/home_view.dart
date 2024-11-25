import 'package:e_pazar_app/core/constants/color.dart';
import 'package:e_pazar_app/core/constants/icon_sizes.dart';
import 'package:e_pazar_app/core/constants/language.dart';
import 'package:e_pazar_app/data/model/product.dart';
import 'package:e_pazar_app/product/widgets/product_card.dart';
import 'package:e_pazar_app/product/widgets/search_product_field.dart';
import 'package:e_pazar_app/ui/cubit/cart_page_cubit.dart';
import 'package:e_pazar_app/ui/cubit/home_page_cubit.dart';
import 'package:e_pazar_app/ui/view/cart_page/cart_view.dart';
import 'package:e_pazar_app/ui/view/detail_page/detail_view.dart';
import 'package:e_pazar_app/ui/view/home_page/home_page_mixin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomePageState();
}

class _HomePageState extends State<HomeView> with HomeViewMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.whiteColor,
      appBar: AppBar(
        centerTitle: false,
        automaticallyImplyLeading: false,
        title: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(Language.deliveryAddress,
              style:
                  Theme.of(context).textTheme.bodySmall?.copyWith(color: AppColor.secondaryColor)),
          Row(children: [
            Text(Language.address,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(color: AppColor.blackColor, fontWeight: FontWeight.w500)),
            Icon(Icons.swap_vert_outlined, size: IconSizes.iconSmall)
          ])
        ]),
        actions: [
          Row(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute<CartView>(builder: (context) => const CartView())).then(
                    (value) {
                      context.read<CartPageCubit>().loadProduct();
                    },
                  );
                },
                icon: const Icon(Icons.shopping_cart_outlined, size: IconSizes.iconIntermediate),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.notifications_outlined, size: IconSizes.iconIntermediate),
              ),
            ],
          )
        ],
      ),
      body: BlocBuilder<HomePageCubit, List<Product>>(
        builder: (context, productList) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(child: searchProductField()),
                  ],
                ),
                Expanded(
                  child: productList.isNotEmpty
                      ? GridView.builder(
                          itemCount: productList.length,
                          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 1 / 1.5,
                            mainAxisSpacing: 10,
                            crossAxisSpacing: 5,
                          ),
                          itemBuilder: (context, index) {
                            final product = productList[index];
                            return GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute<DetailView>(
                                      builder: (context) => DetailView(product: product)),
                                );
                              },
                              child: ProductCard(product: product),
                            );
                          },
                        )
                      : const Center(child: Text("")),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  DropdownMenu<String> _dropDownMenu(
    double mWidth,
    BuildContext context,
    List<Product> productList,
  ) {
    return DropdownMenu(
        menuStyle: MenuStyle(backgroundColor: WidgetStateProperty.resolveWith((
          states,
        ) {
          return AppColor.whiteColor;
        })),
        trailingIcon: Icon(Icons.filter_list_rounded),
        inputDecorationTheme: InputDecorationTheme(suffixIconColor: AppColor.whiteColor),
        width: mWidth * 0.3,
        textStyle: Theme.of(context).textTheme.labelSmall,
        onSelected: (sortType) {
          sortFoods(sortType, productList);
        },
        dropdownMenuEntries: <DropdownMenuEntry<String>>[
          DropdownMenuEntry(
            value: "sortByPriceAscending",
            label: "sortByPriceAscending",
            style: MenuItemButton.styleFrom(
              backgroundColor: Colors.white, //unselected background color,
            ),
          ),
          DropdownMenuEntry(
            value: "sortByPriceDescending",
            label: "sortByPriceDescending",
            style: MenuItemButton.styleFrom(
              backgroundColor: Colors.white, //unselected background color,
            ),
          ),
          DropdownMenuEntry(
            value: "sortByAlphabeticalAscending",
            label: "sortByAlphabeticalAscending",
            style: MenuItemButton.styleFrom(
              backgroundColor: Colors.white, //unselected background color,
            ),
          ),
          DropdownMenuEntry(
            value: "sortByAlphabeticalDescending",
            label: "sortByAlphabeticalDescending",
            style: MenuItemButton.styleFrom(
              backgroundColor: Colors.white, //unselected background color,
            ),
          ),
        ]);
  }
}
