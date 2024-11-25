import 'package:e_pazar_app/core/constants/color.dart';
import 'package:e_pazar_app/core/constants/icon_sizes.dart';
import 'package:e_pazar_app/ui/cubit/home_page_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class searchProductField extends StatelessWidget {
  const searchProductField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
        keyboardType: TextInputType.name,
        decoration: InputDecoration(
          hintText: "Search here ... ",
          hintStyle: Theme.of(context)
              .textTheme
              .bodyMedium
              ?.copyWith(fontSize: 16, color: AppColor.secondaryGrayColor),
          prefixIcon: const Icon(
            Icons.search_rounded,
            size: IconSizes.iconLarge,
          ),
          filled: true,
          fillColor: AppColor.primaryLightColor,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColor.primaryLightColor),
            borderRadius: BorderRadius.all(Radius.circular(13)),
          ),
        ),
        onChanged: (value) {
          context.read<HomePageCubit>().searchProduct(value);
        });
  }
}
