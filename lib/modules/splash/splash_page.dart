import 'package:counter_app/shared/auth/authController.dart';
import 'package:counter_app/shared/themes/app_colors.dart';
import 'package:counter_app/shared/themes/app_images.dart';
import 'package:flutter/material.dart';

class SplacePage extends StatelessWidget {
  const SplacePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final authController = AuthController();
    authController.currentUser(context);
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Stack(
        children: [
          Center(child: Image.asset(AppImages.union)),
          Center(child: Image.asset(AppImages.logoFull)),
        ],
      ),
    );
  }
}
