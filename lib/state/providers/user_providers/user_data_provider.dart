import 'package:green_market/state/notifiers/user_notifiers/user_data_notifier.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

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
