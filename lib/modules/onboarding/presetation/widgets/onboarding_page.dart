import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingPage extends GetView {
  const OnboardingPage({
    super.key,
    required this.image,
    required this.title,
    required this.description,
  });

  final String image;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      children: [
        SizedBox(height: 30,),
        Padding(padding: const EdgeInsets.all(20), child: Image.asset(image)),
        SizedBox(height: 20,),
        Text(title, style: TextTheme.of(context).titleLarge,textAlign: .center,),
        Text(description,textAlign: .center,),
      ],
    );
  }
}
