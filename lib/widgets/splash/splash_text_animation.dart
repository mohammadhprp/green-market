import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import '../../constants/app/app_strings.dart';
import '../../constants/themes/app_colors.dart';

import '../../components/app_version/app_version_view.dart';
import '../../constants/themes/values_manager.dart';

class SplashAnimationText extends StatelessWidget {
  const SplashAnimationText({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 5,
      left: 0,
      right: 0,
      child: Column(
        children: [
          AnimatedTextKit(
            animatedTexts: [
              TypewriterAnimatedText(
                AppStrings.splashQuote,
                speed: const Duration(milliseconds: DurationConstant.d100),
                textStyle: Theme.of(context).textTheme.displaySmall?.copyWith(
                      color: AppColors.white100,
                    ),
                cursor: '...',
              ),
            ],
            isRepeatingAnimation: false,
          ),
          const SizedBox(height: AppSize.s32),
          const Padding(
            padding: EdgeInsets.only(bottom: AppPadding.p12),
            child: Center(child: AppVersionView()),
          ),
        ],
      ),
    );
  }
}
