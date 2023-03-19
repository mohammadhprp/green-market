import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../models/plant/plant.dart';
import 'shop_cart_provider.dart';

final fetchShopCartProvider = Provider<List<Plant>>(
  (ref) {
    final provider = ref.watch(shopCartProvider.notifier);

    return provider.fetch();
  },
);
