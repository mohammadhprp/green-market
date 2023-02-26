import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../constants/themes/app_colors.dart';
import '../../constants/themes/font_manager.dart';
import '../../constants/themes/values_manager.dart';
import '../../models/on_board/on_board.dart';

class OnBoardSliderItem extends StatelessWidget {
  final OnBoard onBoard;
  const OnBoardSliderItem({
    super.key,
    required this.onBoard,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: AppSize.s80,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AutoSizeText(
            onBoard.title,
            style: Theme.of(context).textTheme.displayMedium?.copyWith(
                  fontSize: FontSize.s30,
                  color: AppColors.white100,
                ),
            minFontSize: FontSize.s25,
            maxLines: 1,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: AppSize.s20),
          AutoSizeText(
            onBoard.desc,
            style: Theme.of(context).textTheme.displaySmall?.copyWith(
                  fontSize: FontSize.s20,
                  color: AppColors.white100,
                ),
            minFontSize: FontSize.s14,
            maxLines: 2,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
