import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:product_manager/core/constants/app_colors.dart';

class Loading extends StatelessWidget {
  const Loading({super.key, this.size});

   final double? size;

  @override
  Widget build(BuildContext context) {
    return SpinKitCircle(color: AppColors.primaryColor, size: size == null  ? 20 : 50,);
  }
}
