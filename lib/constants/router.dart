import 'package:flutter/material.dart';
import 'package:green_market/screens/on_board/on_board_screen.dart';

Map<String, Widget Function(BuildContext)> router() => {
      OnBoardScreen.routeName: (context) => const OnBoardScreen(),
    };
