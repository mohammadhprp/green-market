import 'package:green_market/constants/themes/values_manager.dart';
import 'package:green_market/models/plant/plant.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../constants/mock/plant_data.dart';

final fetchPlantsProvider = FutureProvider<List<Plant>>((ref) async {
  final list = await Future.delayed(
    const Duration(
      seconds: DurationConstant.d1,
      milliseconds: DurationConstant.d500,
    ),
    () => PlantData.list,
  );

  return list;
});

final showPlantProvider = FutureProvider.family<Plant, int>(
  (ref, int id) async {
    final plant = await Future.delayed(
      const Duration(
        seconds: DurationConstant.d1,
        milliseconds: DurationConstant.d500,
      ),
      () => PlantData.list.firstWhere(
        (plant) => plant.id == id,
      ),
    );

    return plant;
  },
);
