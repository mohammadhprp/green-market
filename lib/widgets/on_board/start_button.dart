import 'package:flutter/material.dart';

import '../../components/buttons/elevated_button_view.dart';
import '../../constants/app/app_strings.dart';
import '../../constants/themes/app_colors.dart';
import '../../constants/themes/values_manager.dart';

class StartButton extends StatelessWidget {
  const StartButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Align(
          alignment: Alignment.center,
          child: ElevatedButtonView(
            text: AppStrings.startShopping,
            onPressed: () {},
            foregroundColor: AppColors.white,
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  color: AppColors.white100,
                ),
          ),
        ),
        const SizedBox(height: AppSize.s50),
      ],
    );
  }
}
