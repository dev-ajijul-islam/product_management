import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:product_manager/core/constants/app_strings.dart';
import 'package:product_manager/core/constants/asset_paths.dart';
import 'package:product_manager/core/widgets/loading.dart';
import 'package:product_manager/modules/splash/controller/splash_controller.dart';

class SplashScreen extends GetView {
  SplashScreen({super.key});

  final SplashController splashController = Get.find<SplashController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          spacing: 10,
          mainAxisAlignment: .center,
          crossAxisAlignment: .center,
          children: [
            Spacer(),
            Image.asset(width: 150.w, height: 150.h, AssetPaths.SplashLogo),
            Text(
              AppStrings.splash["splash_title"].toString(),
              style: TextTheme.of(context).titleLarge,
              textAlign: .center,
            ),
            Text(
              AppStrings.splash["splash_description"].toString(),
              textAlign: .center,
              style: TextTheme.of(context).bodyMedium,
            ),
            Spacer(),
            Loading(size: 50),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
