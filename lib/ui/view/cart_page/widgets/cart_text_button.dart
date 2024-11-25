import 'package:e_pazar_app/core/constants/color.dart';
import 'package:e_pazar_app/product/widgets/cart_alert_dialog.dart';
import 'package:flutter/material.dart';

class CardTextButtonWidget extends StatefulWidget {
  CardTextButtonWidget({
    super.key,
    required this.totalCoast,
  });
  // The total cost of the items in the cart.
  final int totalCoast;

  @override
  State<CardTextButtonWidget> createState() => _CardTextButtonWidgetState();
}

class _CardTextButtonWidgetState extends State<CardTextButtonWidget> {
  //final NotificationService notificationService = NotificationService();

  @override
  void initState() {
    super.initState();
    //notificationService.setup();
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Text(
        "Confirm Card",
        style: Theme.of(context)
            .textTheme
            .titleLarge
            ?.copyWith(fontWeight: FontWeight.bold, color: AppColor.whiteColor),
      ),
      onPressed: () {
        if (widget.totalCoast <= 0) return;

        showDialog<CartDialog>(
          context: context,
          barrierDismissible: false,
          builder: (context) {
            return CartDialog(context: context);
          },
        );
      },
    );
  }
}
