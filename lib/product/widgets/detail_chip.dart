import 'package:e_pazar_app/core/constants/color.dart';
import 'package:flutter/material.dart';

class DetailChipWidget extends StatelessWidget {
  const DetailChipWidget({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(
        text,
        style: Theme.of(context).textTheme.labelLarge,
      ),
      backgroundColor: AppColor.lightgreyColor,
    );
  }
}
