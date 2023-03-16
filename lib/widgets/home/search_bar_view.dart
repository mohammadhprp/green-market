import 'package:flutter/material.dart';

import '../../components/icon/icon_view.dart';
import '../../constants/app/app_icons.dart';
import '../../constants/app/app_strings.dart';
import '../../constants/themes/app_colors.dart';
import '../../constants/themes/values_manager.dart';

class SearchBarView extends StatelessWidget {
  const SearchBarView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: AppSize.s20),
        Container(
          height: AppSize.s60,
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: AppColors.white100,
            borderRadius: BorderRadius.circular(AppSize.s20),
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: AppSize.s22,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                AppStrings.searchHint,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: AppColors.grey600,
                    ),
              ),
              const IconView(icon: AppIcons.search),
            ],
          ),
        ),
      ],
    );
  }
}
