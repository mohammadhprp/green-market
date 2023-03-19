import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../models/plant/plant.dart';
import '../../notifiers/shop_cart_notifiers/shop_cart_notifiers.dart';

final shopCartProvider = StateNotifierProvider<ShopCartNotifier, List<Plant>>(
  (_) => ShopCartNotifier(),
);
