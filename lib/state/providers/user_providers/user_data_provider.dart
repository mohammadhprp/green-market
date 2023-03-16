import 'dart:math';

import '../../../constants/mock/user_data.dart';
import '../../notifiers/user_notifiers/user_data_notifier.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../models/user/user.dart';

final userDataProvider = ChangeNotifierProvider<UserDataNotifier>(
  (_) => UserDataNotifier(),
);

final hasUserLaunchedAppProvider = Provider<Future<bool>>((ref) {
  final provider = ref.read(userDataProvider);

  return provider.hasUserLaunchedApp();
});

final userFirstLaunchProvider = Provider((ref) {
  final provider = ref.read(userDataProvider);

  provider.userFirstLaunch();
});
