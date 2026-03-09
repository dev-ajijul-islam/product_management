import 'package:get/get.dart';
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
  ];
}
