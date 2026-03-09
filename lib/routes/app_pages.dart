import 'package:get/get.dart';
import 'package:product_manager/modules/auth/binding/sign_in_binding.dart';
import 'package:product_manager/modules/auth/presentation/screen/sign_in_screen.dart';
import 'package:product_manager/modules/auth/presentation/screen/sign_up_screen.dart';
import 'package:product_manager/modules/onboarding/binding/onboarding_binding.dart';
import 'package:product_manager/modules/onboarding/presetation/screen/onboarding_screen.dart';
import 'package:product_manager/modules/splash/binding/splash_binding.dart';
import '../modules/splash/presentation/screen/splash_screen.dart';
import 'app_routes.dart';

class AppPages {
  static List<GetPage> pages = [
    GetPage(
      name: AppRoutes.splashScreen,
      page: () => SplashScreen(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: AppRoutes.onboardingScreen,
      page: () => OnboardingScreen(),
      binding: OnboardingBinding(),
    ),
    GetPage(
      name: AppRoutes.signInScreen,
      page: () => SignInScreen(),
      binding: SignInBinding(),
    ),
    GetPage(name: AppRoutes.signUpScreen, page: () => SignUpScreen()),
  ];
}
