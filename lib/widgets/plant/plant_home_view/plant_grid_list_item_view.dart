import 'package:flutter/material.dart';

import '../../../components/images/image_view.dart';
import '../../../constants/themes/app_colors.dart';
import '../../../constants/themes/font_manager.dart';
import '../../../constants/themes/values_manager.dart';
import '../../../constants/url.dart';
import '../../../models/plant/plant.dart';

class PlantGridListItemView extends StatelessWidget {
  final Plant plant;
  const PlantGridListItemView({
    super.key,
    required this.plant,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Go to detail screen
      },
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.white100,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            ImageView(
              height: AppSize.s165,
              image: "${Url.images}/${plant.images.first.path}",
            ),
            Text(
              plant.name,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontSize: FontSize.s13,
                  ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: AppSize.s10),
            Text(
              "\$ ${plant.price}",
              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    fontSize: FontSize.s18,
                    color: AppColors.primary,
                  ),
            )
          ],
        ),
      ),
    );
  }
}
