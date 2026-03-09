import 'package:get/get.dart';
import 'package:product_manager/routes/app_routes.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    _goToNextScreen();
    super.onInit();
  }

  Future<void> _goToNextScreen() async {
    await Future.delayed(Duration(seconds: 3));
    Get.offAndToNamed(AppRoutes.onboardingScreen);
  }

}
