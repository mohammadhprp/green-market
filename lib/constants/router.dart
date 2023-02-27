import 'package:flutter/material.dart';
import 'package:green_market/screens/home/home_screen.dart';
import 'package:green_market/screens/on_board/on_board_screen.dart';
import 'package:green_market/screens/splash/splash_screen.dart';

Map<String, Widget Function(BuildContext)> router() => {
      OnBoardScreen.routeName: (context) => const OnBoardScreen(),
      SplashScreen.routeName: (context) => const SplashScreen(),
      HomeScreen.routeName: (context) => const HomeScreen(),
    };
