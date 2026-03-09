import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:product_manager/core/constants/app_colors.dart';
import 'package:product_manager/core/constants/app_strings.dart';
import 'package:product_manager/modules/onboarding/controller/onboarding_controller.dart';

class PageIndicator extends StatelessWidget {
  const PageIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    final OnboardingController onboardingController =
        Get.find<OnboardingController>();
    return Obx(
      () => Row(
        spacing: 5,
        mainAxisAlignment: .center,
        crossAxisAlignment: .center,
        children: List.generate(
          AppStrings.onboarding.length,
          (index) => Container(
            width: 8,
            height: 8,
            decoration: BoxDecoration(
              color: onboardingController.currentPage.value == index
                  ? AppColors.primaryColor
                  : Colors.grey,
              borderRadius: BorderRadius.circular(100),
            ),
          ),
        ),
      ),
    );
  }
}
