import 'package:flutter/material.dart';
import 'package:green_market/constants/app/app_animations.dart';

import '../constants/app/app_strings.dart';
import '../constants/router.dart';
import '../constants/themes/theme_data.dart';
import '../screens/splash/splash_screen.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    precacheImage(const AssetImage(AppAnimation.splash), context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppStrings.appTitle,
      theme: themes.theme(),
      home: const SplashScreen(),
      routes: router(),
      navigatorKey: navigatorKey,
    );
  }
}
