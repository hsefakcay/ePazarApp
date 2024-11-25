// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:e_pazar_app/core/constants/icon_sizes.dart';
import 'package:flutter/material.dart';

class ProfileIconTextButton extends StatelessWidget {
  const ProfileIconTextButton({
    required this.text,
    required this.icon,
    required this.onPressed,
    super.key,
  });

  final String text;
  final IconData icon;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: const ButtonStyle(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(16),
                child: Icon(
                  icon,
                  size: IconSizes.iconMedium,
                ),
              ),
              Text(text),
            ],
          ),
          const Icon(Icons.navigate_next_rounded, size: IconSizes.iconMedium),
        ],
      ),
    );
  }
}
