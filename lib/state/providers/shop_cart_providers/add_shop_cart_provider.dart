import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../models/plant/plant.dart';
import 'shop_cart_provider.dart';

final addShopCartProvider = Provider.family<void, Plant>(
  (ref, Plant plant) {
    final provider = ref.read(shopCartProvider.notifier);

    provider.add(plant);
  },
);
