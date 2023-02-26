import 'package:flutter/material.dart';

import '../../components/buttons/text_button_view.dart';
import '../../constants/app/app_strings.dart';
import '../../constants/themes/app_colors.dart';
import '../../constants/themes/values_manager.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: AppSize.s50),
        Align(
          alignment: Alignment.centerRight,
          child: TextButtonView(
            text: AppStrings.skip,
            onPressed: () {},
            foregroundColor: AppColors.white,
          ),
        ),
      ],
    );
  }
}
