import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'shop_cart_provider.dart';

final deleteShopCartProvider = Provider<void>(
  (ref) {
    final provider = ref.read(shopCartProvider.notifier);

    provider.delete();
  },
);
