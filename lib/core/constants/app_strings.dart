import 'package:product_manager/core/constants/asset_paths.dart';

class AppStrings {
  static const Map<String, String> splash = {
    "splash_title": "Theory test in my language",
    "splash_description":
        "I must write the real test will be in English language and this app just helps you to understand the materials in your \n language",
  };

  static const List<Map<String, String>> onboarding = [
    {
      "image" : AssetPaths.onboardingLogo1,
      "onboarding_title": "Best online courses in the world",
      "onboarding_description":
          "Now you can learn anywhere, anytime, even if there is no internet access!",
    },
    {
      "image" : AssetPaths.onboardingLogo2,
      "onboarding_title": "Explore your new skilltoday",
      "onboarding_description":
          "Our platform is designed to help you explore new skills. Let’s learn & grow with Eduline!",
    },
  ];


  static const Map<String, String> signIn = {
    "welcome_title" : "Welcome Back!",
    "sub_title" : "Please login first to start your Theory Test.",
    "sign_in_button" : "Sign In",
    "email" : "Email Address",
    "email_hint" : "pristia@gmail.com",
    "password" : "Password",
    "password_hint" : "Enter Password",
    "forgot_password" : "Forgot Password?",
    "remember_me" : "Remember Me",
    "new" : "New to Theory Test?",
    "create_account" : "Create an account",
  };

}
