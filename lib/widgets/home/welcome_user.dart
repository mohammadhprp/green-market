import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../constants/app/app_strings.dart';
import '../../constants/themes/app_colors.dart';
import '../../state/providers/user_providers/user_data_provider.dart';

class WelcomeUser extends ConsumerWidget {
  const WelcomeUser({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.read(userInfoProvider);
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: AppStrings.welcome,
            style: Theme.of(context).textTheme.titleSmall?.copyWith(
                  color: AppColors.black100,
                ),
          ),
          TextSpan(
            text: user.name,
            style: Theme.of(context).textTheme.titleLarge,
          )
        ],
      ),
    );
  }
}
