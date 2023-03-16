import 'package:green_market/models/plant/plant.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../notifiers/plant_notifiers/plant_notifier.dart';

final plantProvider = ChangeNotifierProvider<PlantNotifier>(
  (_) => PlantNotifier(),
);

final fetchPlantsProvider = FutureProvider<List<Plant>>(
  (ref) async {
    final provider = ref.read(plantProvider);

    return await provider.fetch();
  },
);

final showPlantProvider = FutureProvider.family<Plant, int>(
  (ref, int id) async {
    final provider = ref.read(plantProvider);
    final plant = await provider.show(id);

    return plant;
  },
);
