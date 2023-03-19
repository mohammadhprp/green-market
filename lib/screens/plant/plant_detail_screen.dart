import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../components/icon/icon_view.dart';
import '../../constants/app/app_icons.dart';
import '../../constants/app/app_strings.dart';
import '../../constants/extensions/media_query_extension.dart';
import '../../constants/themes/app_colors.dart';
import '../../constants/themes/font_manager.dart';
import '../../constants/themes/values_manager.dart';
import '../../state/providers/plant_providers/plant_provider.dart';
import '../../utils/views/errors/something_went_wrong.dart';
import '../../utils/views/loading_view.dart';
import '../../widgets/home/app_bar_icons.dart';
import '../../widgets/plant/plant_detail_view/plant_image_view.dart';
import '../../widgets/plant/plant_detail_view/plant_info_view.dart';
import '../../widgets/plant/plant_detail_view/plant_title_view.dart';

class PlantDetailScreen extends StatelessWidget {
  final int id;
  final String name;
  final double price;
  const PlantDetailScreen({
    super.key,
    required this.id,
    required this.name,
    required this.price,
  });

  static const routeName = 'plant/detail';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            SizedBox(),
            AppBarIcons(),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppPadding.p20),
        child: Column(
          children: [
            PlantTitleView(name: name),
            const SizedBox(height: AppSize.s20),
            Consumer(
              builder: (context, ref, child) {
                final plantData = ref.watch(showPlantProvider(id));
                return plantData.when(
                  loading: () => SizedBox(
                    height: context.height * 0.5,
                    child: const LoadingView(),
                  ),
                  data: (plant) {
                    return Expanded(
                      child: ListView(
                        padding: const EdgeInsets.only(
                          bottom: kBottomNavigationBarHeight,
                        ),
                        children: [
                          PlantImageView(images: plant.images),
                          PlantInfoView(plant: plant),
                        ],
                      ),
                    );
                  },
                  error: (error, stack) => SomethingWentWrong(
                    error: error.toString(),
                  ),
                );
              },
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        width: context.width,
        color: AppColors.white100,
        padding: const EdgeInsets.all(AppPadding.p20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  AppStrings.price.toUpperCase(),
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                        fontSize: FontSize.s12,
                      ),
                ),
                Text(
                  "\$ $price",
                  style: Theme.of(context).textTheme.displaySmall?.copyWith(
                        color: AppColors.primary,
                      ),
                ),
              ],
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(),
                  const SizedBox(),
                  Row(
                    children: const [
                      IconView(icon: AppIcons.messageSquareDots),
                      SizedBox(width: AppSize.s20),
                      IconView(icon: AppIcons.heart),
                    ],
                  ),
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: const IconView(icon: AppIcons.cartAlt),
                    label: Text(
                      AppStrings.addToCart,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            color: AppColors.white100,
                          ),
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: const StadiumBorder(),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
