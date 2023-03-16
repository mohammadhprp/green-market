import 'package:flutter/material.dart';
import '../../screens/home/home_screen.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../components/buttons/elevated_button_view.dart';
import '../../constants/app/app_strings.dart';
import '../../constants/themes/app_colors.dart';
import '../../constants/themes/values_manager.dart';
import '../../state/providers/user_providers/user_data_provider.dart';

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
            child: Consumer(
              builder: (context, ref, child) {
                return ElevatedButtonView(
                  text: AppStrings.startShopping,
                  onPressed: () {
                    ref.read(userFirstLaunchProvider);

                    Navigator.of(context).pushReplacementNamed(
                      HomeScreen.routeName,
                    );
                  },
                  foregroundColor: AppColors.white,
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        color: AppColors.white100,
                      ),
                );
              },
            )),
        const SizedBox(height: AppSize.s50),
      ],
    );
  }
}
