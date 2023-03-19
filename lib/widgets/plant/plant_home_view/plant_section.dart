import 'package:flutter/material.dart';

import '../../../constants/app/app_strings.dart';
import '../../../constants/themes/app_colors.dart';
import '../../../constants/themes/values_manager.dart';
import 'plant_grid_list_view.dart';

class PlantSection extends StatelessWidget {
  const PlantSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppPadding.p4),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                AppStrings.popularProduct,
                style: Theme.of(context).textTheme.displayMedium,
              ),
              Text(
                AppStrings.viewAll,
                style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      color: AppColors.black100,
                      decoration: TextDecoration.underline,
                    ),
              ),
            ],
          ),
          const SizedBox(height: AppSize.s40),
          const Expanded(
            child: PlantGridListView(),
          )
        ],
      ),
    );
  }
}
