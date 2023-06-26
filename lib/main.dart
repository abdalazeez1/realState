import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:injectable/injectable.dart';
import 'package:realstate/common/theme/app_theme.dart';
import 'package:realstate/router/router.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'common/helper/dependencie_injection.dart';

void main() async {
  configureDependencies();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (BuildContext context, Widget? child) {
        return MaterialApp.router(
          routerConfig: router,
          title: 'Flutter Demo',
          theme: getAppTheme( ThemeMode.system, context),
           darkTheme: getAppTheme( ThemeMode.dark, context),
        );
      },
    );
  }
}
