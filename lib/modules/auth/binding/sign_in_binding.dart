import 'package:get/get.dart';
import 'package:product_manager/modules/auth/controller/sign_in_controller.dart';

class SignInBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignInController(),);
  }

}