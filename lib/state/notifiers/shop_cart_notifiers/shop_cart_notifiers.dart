import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../models/plant/plant.dart';

class ShopCartNotifier extends StateNotifier<List<Plant>> {
  ShopCartNotifier() : super([]);

  /// Get shop items
  List<Plant> fetch() {
    return state;
  }

  /// Add to the cart
  void add(Plant plant) {
    state.add(plant);
  }

  /// Remove from the cart
  void remove(int id) {
    state.removeWhere(
      (plant) => plant.id == id,
    );
  }

  /// Delete all item inside cart
  void delete() {
    state.clear();
  }
}
