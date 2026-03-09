import 'package:get/get.dart';
import 'package:product_manager/modules/onboarding/controller/onboarding_controller.dart';

class OnboardingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OnboardingController(),);
  }
}