import 'package:flutter/material.dart';
import 'package:green_market/helpers/app_storage.dart';

class UserDataNotifier extends ChangeNotifier {
  final _storage = AppStorage();
  static const userLaunchAt = 'user_launch_at';

  Future<void> userFirstLaunch() async {
    _storage.write(
      key: userLaunchAt,
      data: DateTime.now().toIso8601String(),
    );
  }

  Future<bool> hasUserLaunchedApp() async {
    final data = await _storage.read(key: userLaunchAt) as String?;

    if (data == null) {
      return false;
    }

    return true;
  }
}
