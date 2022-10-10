import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:masmasafood/Data/theme.dart';
import 'package:masmasafood/View/splash_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown],
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      splitScreenMode: true,
      minTextAdapt: true,
      builder: (BuildContext context, Widget? child) {
        return AdaptiveTheme(
          light: CustomTheme.lightTheme,
          dark: CustomTheme.darkTheme,
          initial: AdaptiveThemeMode.light,
          builder: (ThemeData light, ThemeData dark) {
            return GetMaterialApp(
              title: 'Masmas Food',
              theme: CustomTheme.lightTheme,
              darkTheme: CustomTheme.darkTheme,
              debugShowCheckedModeBanner: false,
              defaultTransition: Transition.rightToLeft,
              home: const SplashScreen(),
            );
          },
        );
      },
    );
  }
}
