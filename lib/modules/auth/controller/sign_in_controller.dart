import 'package:get/get.dart';

class SignInController extends GetxController {
  RxBool isPasswordVisible = true.obs;
  RxBool isRememberChecked = false.obs;

  void togglePasswordVisibility() {
    isPasswordVisible.value = !isPasswordVisible.value;
  }

  void toggleRememberMe() {
    isRememberChecked.value = !isRememberChecked.value;
  }
}
