import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:protptype_1/app/app_constant.dart';
import 'package:protptype_1/app/app_global.dart';
import 'package:protptype_1/screen/auth/auth_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      builder: (_, child) {
        return MaterialApp(
          navigatorKey: navigatorKey,
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: AppColors.blurDress),
            useMaterial3: true,
          ),
          home: child,
        );
      },
      child: const AuthPage(),
    );
  }
}
