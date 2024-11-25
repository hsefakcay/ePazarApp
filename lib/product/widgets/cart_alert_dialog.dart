import 'package:e_pazar_app/core/constants/color.dart';
import 'package:e_pazar_app/core/utils/project_utility.dart';
import 'package:e_pazar_app/core/utils/screen_utility.dart';
import 'package:e_pazar_app/ui/view/main_tab_page/main_tab_view.dart';
import 'package:flutter/material.dart';

class CartDialog extends AlertDialog {
  CartDialog({required BuildContext context, Key? key})
      : super(
          key: key,
          title: Center(
            child: Text(
              "Order Preparing...",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          backgroundColor: AppColor.primaryLightColor,
          actions: [
            Center(
                child: Column(
              children: [
                SizedBox(height: ScreenUtil.screenHeight(context) * 0.02),
                //LottieShadowContainerWidget(
                //  height: ScreenUtil.screenHeight(context) * 0.25,),
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Container(
                    decoration: ProjectUtility.primaryColorBoxDecoration,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: TextButton(
                        child: Text("OK",
                            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                                color: AppColor.whiteColor, fontWeight: FontWeight.bold)),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute<MainPage>(builder: (context) => const MainPage()),
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ))
          ],
        );
}
