// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:e_pazar_app/core/constants/color.dart';
import 'package:e_pazar_app/core/utils/project_utility.dart';
import 'package:e_pazar_app/core/utils/screen_utility.dart';
import 'package:e_pazar_app/ui/view/cart_page/widgets/cart_text_button.dart';
import 'package:flutter/material.dart';

class OrderSummaryWidget extends StatelessWidget {
  const OrderSummaryWidget({
    Key? key,
    required this.totalCoast,
  }) : super(key: key);

  final int totalCoast;

  @override
  Widget build(BuildContext context) {
    var mHeight = ScreenUtil.screenHeight(context);

    return Container(
      height: mHeight * 0.25,
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.only(top: 0, left: 30, bottom: 10, right: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Divider(
              color: AppColor.primaryLightColor,
            ),
            Text(
              "${"Order Summary"} :",
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "${"Totals"} :",
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                Text(
                  "₺ $totalCoast.00",
                  style: Theme.of(context).textTheme.headlineMedium,
                )
              ],
            ),
            SizedBox(height: mHeight * 0.02),
            Container(
                decoration: ProjectUtility.primaryColorBoxDecoration,
                height: mHeight * 0.07,
                alignment: Alignment.center,
                child: CardTextButtonWidget(totalCoast: totalCoast))
          ],
        ),
      ),
    );
  }
}
