import 'package:flutter/material.dart';
import 'package:product_manager/core/constants/asset_paths.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset(AssetPaths.signInLogo)
        ],
      ),
    );
  }
}
