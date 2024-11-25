import 'package:e_pazar_app/core/constants/color.dart';
import 'package:flutter/material.dart';

class ProjectUtility {
  static BoxDecoration cartBoxDecoration = BoxDecoration(
      gradient: LinearGradient(
          begin: Alignment.topLeft,
          colors: [AppColor.secondaryColor, AppColor.primaryLightColor, AppColor.whiteColor]));

  static BoxDecoration primaryColorBoxDecoration =
      BoxDecoration(borderRadius: BorderRadius.circular(12), color: AppColor.primaryColor);

  static BoxDecoration signUpBoxDecoration = BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      color: AppColor.whiteColor,
      border: Border.all(width: 0.2, color: Colors.black38));

  static BoxDecoration cartDismissibleBoxDecoration =
      BoxDecoration(borderRadius: BorderRadius.circular(12), color: AppColor.redColor);

  static BoxDecoration lightColorBoxDecoration =
      BoxDecoration(borderRadius: BorderRadius.circular(12), color: AppColor.primaryLightColor);

  static BoxDecoration greyColorBoxDecoration =
      BoxDecoration(borderRadius: BorderRadius.circular(12), color: AppColor.lightgreyColor);
}
