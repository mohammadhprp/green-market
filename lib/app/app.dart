import 'package:flutter/material.dart';
import 'package:green_market/screens/on_board/on_board_screen.dart';

import '../constants/app/app_strings.dart';
import '../constants/router.dart';
import '../constants/themes/theme_data.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppStrings.appTitle,
      theme: themes.theme(),
      home: const OnBoardScreen(),
      routes: router(),
      navigatorKey: navigatorKey,
    );
  }
}
