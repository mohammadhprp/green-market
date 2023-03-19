import 'package:flutter/material.dart';

import '../../../constants/app/app_strings.dart';
import '../../../constants/themes/app_colors.dart';

class PlantTitleView extends StatelessWidget {
  final String name;
  const PlantTitleView({
    Key? key,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          name,
          style: Theme.of(context).textTheme.displayMedium,
        ),
        Text(
          AppStrings.indoors,
          style: Theme.of(context).textTheme.titleSmall?.copyWith(
                color: AppColors.black100,
                decoration: TextDecoration.underline,
              ),
        ),
      ],
    );
  }
}
