import 'package:flutter/material.dart';

import '../../../constants/themes/app_colors.dart';

class SomethingWentWrong extends StatelessWidget {
  final String error;
  const SomethingWentWrong({
    super.key,
    this.error = 'Something Went Wrong!',
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        error,
        style: Theme.of(context).textTheme.titleMedium?.copyWith(
              color: AppColors.error,
            ),
      ),
    );
  }
}
