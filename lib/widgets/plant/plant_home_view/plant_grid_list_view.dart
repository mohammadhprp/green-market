import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../state/providers/plant_providers/plant_provider.dart';
import '../../../utils/views/errors/something_went_wrong.dart';
import '../../../utils/views/loading_view.dart';
import 'plant_grid_list_item_view.dart';

class PlantGridListView extends ConsumerWidget {
  const PlantGridListView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final plantListData = ref.watch(fetchPlantsProvider);
    return plantListData.when(
      loading: () => const LoadingView(),
      data: (plants) {
        return GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio:
                2 / 2.7, //gives custom height to your grid element
          ),
          itemCount: plants.length,
          itemBuilder: (BuildContext context, int index) {
            final plant = plants[index];
            return PlantGridListItemView(plant: plant);
          },
        );
      },
      error: (error, stack) => SomethingWentWrong(
        error: "$error",
      ),
    );
  }
}
