import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:product_manager/core/constants/app_colors.dart';
import 'package:product_manager/core/constants/app_strings.dart';
import 'package:product_manager/core/constants/asset_paths.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: .start,
          crossAxisAlignment: .center,
          children: [
            SizedBox(height: 50),
            Image.asset(AssetPaths.signInLogo, width: 100, height: 100),
            SizedBox(height: 50),
            Text(
              AppStrings.signIn["welcome_title"]!,
              style: TextTheme.of(context).titleLarge,
            ),
            SizedBox(height: 10),
            Text(AppStrings.signIn["sub_title"]!),
            SizedBox(height: 50),

            Form(
              child: Column(
                crossAxisAlignment: .start,
                children: [
                  Text(
                    AppStrings.signIn["email"]!,
                    style: TextTheme.of(context).bodyMedium,
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: AppStrings.signIn["email_hint"]!,
                    ),
                  ),

                  SizedBox(height: 10),
                  Text(
                    AppStrings.signIn["password"]!,
                    style: TextTheme.of(context).bodyMedium,
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: AppStrings.signIn["password_hint"]!,
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: .spaceBetween,
                    children: [
                      Row(
                        children: [
                          Checkbox(value: true, onChanged: (value) {}),
                          Text(AppStrings.signIn["remember_me"]!),
                        ],
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          AppStrings.signIn["forgot_password"]!,
                          style: TextStyle(color: AppColors.primaryColor),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: .infinity,
                    height: 50,
                    child: FilledButton(
                      onPressed: () {},
                      child: Text(AppStrings.signIn["sign_in_button"]!),
                    ),
                  ),
                  SizedBox(height: 30,),
                  Align(
                    child: RichText(text: TextSpan(
                      text: "New to Theory Test?",
                      style: TextStyle(color: AppColors.textColor),
                      children: [
                        TextSpan(
                          text: "Create an account",
                          style: TextStyle(color: AppColors.primaryColor),
                          recognizer: TapGestureRecognizer()..onTap = () {}
                        )
                      ]
                    )),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
