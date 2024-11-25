import 'package:e_pazar_app/core/constants/color.dart';
import 'package:e_pazar_app/core/constants/icon_sizes.dart';
import 'package:e_pazar_app/core/utils/project_utility.dart';
import 'package:flutter/material.dart';

/// A widget that displays a button with an icon, allowing the user to add or remove items.
class AddOrRemoveButton extends StatelessWidget {
  const AddOrRemoveButton({
    super.key,
    required this.process,
    required this.icon,
  });

  /// The function to be executed when the button is pressed.
  final VoidCallback process;

  /// The icon to be displayed on the button.
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: ProjectUtility.primaryColorBoxDecoration.copyWith(color: AppColor.secondaryColor),
      child: IconButton(
        onPressed: process,
        icon: Icon(
          icon,
          color: AppColor.whiteColor,
        ),
        iconSize: IconSizes.iconMedium,
      ),
    );
  }
}
