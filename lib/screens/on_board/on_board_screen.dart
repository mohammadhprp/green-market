import 'package:flutter/material.dart';
import '../../widgets/on_board/start_button.dart';

import '../../widgets/on_board/on_board_background.dart';
import '../../widgets/on_board/on_board_slider.dart';
import '../../widgets/on_board/skip_button.dart';

class OnBoardScreen extends StatelessWidget {
  static const routeName = 'on_board';
  const OnBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const OnBoardBackground(),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SkipButton(),
              Column(
                children: const [
                  OnBoardSlider(),
                  StartButton(),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
