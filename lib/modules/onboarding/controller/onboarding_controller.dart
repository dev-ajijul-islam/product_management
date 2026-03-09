import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:product_manager/core/constants/app_strings.dart';
import 'package:product_manager/routes/app_routes.dart';

class OnboardingController extends GetxController {
  final RxInt currentPage = 0.obs;

  final PageController pageController = PageController();

  void nextPage() {
    currentPage.value + 1 == AppStrings.onboarding.length
        ? getStarted()
        : pageController.nextPage(
            duration: Duration(milliseconds: 300),
            curve: Curves.easeInOut,
          );
  }

  void getStarted() {
    Get.offAndToNamed(AppRoutes.signInScreen);
  }
}
