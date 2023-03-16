import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:green_market/constants/mock/plant_data.dart';
import 'package:green_market/constants/themes/values_manager.dart';
import 'package:green_market/models/plant/plant.dart';

class PlantNotifier extends ChangeNotifier {
  /// fetch plants with 1 second delayed
  Future<List<Plant>> fetch() async {
    final List<Plant> loaded = [];
    await Future.delayed(
      const Duration(seconds: DurationConstant.d1),
      () {
        for (var plant in PlantData.list) {
          loaded.add(plant);
        }
      },
    );

    return loaded;
  }

  /// get plant with given [id]
  Future<Plant> show(int id) async {
    final plant = await Future.delayed(
      const Duration(
        seconds: DurationConstant.d1,
        milliseconds: DurationConstant.d500,
      ),
      () => PlantData.list.firstWhereOrNull(
        (plant) => plant.id == id,
      ),
    );

    if (plant == null) {
      throw Exception(
        'Could not found plant with ID: $id',
      );
    }

    return plant;
  }
}
