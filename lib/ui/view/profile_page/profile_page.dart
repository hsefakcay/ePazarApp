// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:e_pazar_app/core/constants/color.dart';
import 'package:e_pazar_app/core/constants/icon_sizes.dart';
import 'package:e_pazar_app/core/utils/project_utility.dart';
import 'package:e_pazar_app/ui/view/profile_page/widget/profile_icon_text_button.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.whiteColor,
      appBar: AppBar(
        backgroundColor: AppColor.primaryColor,
        automaticallyImplyLeading: false,
        title: Text("Profile",
            style: Theme.of(context)
                .textTheme
                .headlineSmall
                ?.copyWith(color: AppColor.whiteColor, fontWeight: FontWeight.bold)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Container(
                decoration: ProjectUtility.lightColorBoxDecoration,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 60),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.person_rounded,
                            size: IconSizes.iconLarge,
                            color: AppColor.primaryColor,
                          ),
                        ),
                        Text("email@gmail.com", style: Theme.of(context).textTheme.titleLarge),
                        Text(
                          "+90 507 XXXX XX",
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Column(
                spacing: 10,
                children: [
                  ProfileIconTextButton(
                      text: "Live Support", icon: Icons.comment_rounded, onPressed: () {}),
                  ProfileIconTextButton(
                      text: "Address", icon: Icons.location_on_outlined, onPressed: () {}),
                  ProfileIconTextButton(
                      text: "Favorites", icon: Icons.favorite_rounded, onPressed: () {}),
                  ProfileIconTextButton(
                      text: "Order History", icon: Icons.shopping_cart_outlined, onPressed: () {}),
                  ProfileIconTextButton(
                      text: "Payment Methods", icon: Icons.credit_card_rounded, onPressed: () {}),
                  ProfileIconTextButton(
                      text: "ontact Preferences",
                      icon: Icons.notifications_active_rounded,
                      onPressed: () {}),
                  ProfileIconTextButton(
                      text: "Log out", icon: Icons.exit_to_app_rounded, onPressed: () {}),
                  const SizedBox(height: 75),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
