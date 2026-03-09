import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:product_manager/core/values/app_theme.dart';
import 'package:product_manager/routes/app_routes.dart';

import 'routes/app_pages.dart';

class ProductManager extends StatelessWidget {
  const ProductManager({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (_, _) => GetMaterialApp(
        title: 'Product Manager',
        debugShowCheckedModeBanner: false,
        getPages: AppPages.pages,
        initialRoute: AppRoutes.splashScreen,
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        themeMode: .system,
      ),
    );
  }
}
