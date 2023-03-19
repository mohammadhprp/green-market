import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'shop_cart_provider.dart';

final removeShopCartProvider = Provider.family<void, int>(
  (ref, int id) {
    final provider = ref.read(shopCartProvider.notifier);

    provider.remove(id);
  },
);
