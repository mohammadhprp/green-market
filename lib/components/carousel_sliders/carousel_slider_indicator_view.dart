import 'package:flutter/material.dart';

import '../../constants/themes/app_colors.dart';
import '../../constants/themes/values_manager.dart';

class CarouselSliderIndicatorView extends StatelessWidget {
  final int length;
  final int index;
  const CarouselSliderIndicatorView({
    super.key,
    required this.index,
    required this.length,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (int i = 0; i < length; i++)
          i == index
              ? const CarouselSliderIndicatorItemView(
                  color: AppColors.primaryLight,
                  size: 5,
                )
              : const CarouselSliderIndicatorItemView(
                  color: AppColors.white,
                  size: 3,
                )
      ],
    );
  }
}

class CarouselSliderIndicatorItemView extends StatelessWidget {
  final Color color;
  final double size;
  const CarouselSliderIndicatorItemView({
    super.key,
    required this.color,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: AppSize.s2),
      child: CircleAvatar(
        radius: size,
        backgroundColor: color,
      ),
    );
  }
}
