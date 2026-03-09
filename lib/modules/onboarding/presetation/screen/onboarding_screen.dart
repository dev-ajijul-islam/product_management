import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:product_manager/core/constants/app_strings.dart';
import 'package:product_manager/modules/onboarding/controller/onboarding_controller.dart';
import 'package:product_manager/modules/onboarding/presetation/widgets/onboarding_page.dart';
import 'package:product_manager/modules/onboarding/presetation/widgets/page_indicator.dart';

class OnboardingScreen extends GetView {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final OnboardingController onboardingController =
        Get.find<OnboardingController>();
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Expanded(
                  child: PageView(
                    onPageChanged: (value) =>
                        onboardingController.currentPage.value = value,
                    controller: onboardingController.pageController,
                    children: AppStrings.onboarding
                        .map(
                          (p) => OnboardingPage(
                            image: p["image"]!,
                            title: p["onboarding_title"]!,
                            description: p["onboarding_description"]!,
                          ),
                        )
                        .toList(),
                  ),
                ),
                PageIndicator(),
                SizedBox(height: 50.h),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: Obx(
                    () => FilledButton(
                      onPressed: onboardingController.nextPage,
                      child: Text(
                        onboardingController.currentPage.value + 1 ==
                                AppStrings.onboarding.length
                            ? "Get Started"
                            : "Next",
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 50,
            right: 20,
            child: TextButton(onPressed: () {}, child: Text("Skip")),
          ),
        ],
      ),
    );
  }
}
