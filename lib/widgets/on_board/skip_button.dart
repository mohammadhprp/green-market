import 'package:flutter/material.dart';
import '../../state/providers/user_providers/user_data_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../components/buttons/text_button_view.dart';
import '../../constants/app/app_strings.dart';
import '../../constants/themes/app_colors.dart';
import '../../constants/themes/values_manager.dart';
import '../../screens/home/home_screen.dart';

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
          child: Consumer(
            builder: (context, ref, child) {
              return TextButtonView(
                text: AppStrings.skip,
                onPressed: () {
                  ref.read(userFirstLaunchProvider);

                  Navigator.of(context).pushReplacementNamed(
                    HomeScreen.routeName,
                  );
                },
                foregroundColor: AppColors.white,
              );
            },
          ),
        ),
      ],
    );
  }
}
