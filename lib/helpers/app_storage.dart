import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class AppStorage {
  final FlutterSecureStorage storage = const FlutterSecureStorage();

  Future<void> write({
    required String key,
    required dynamic data,
  }) async {
    final String value = jsonEncode(data);
    await storage.write(key: key, value: value);
  }

  Future<dynamic> read({
    required String key,
  }) async {
    final data = await storage.read(key: key);

    if (data == null) {
      return null;
    }

    final decode = jsonDecode(data);

    return decode;
  }
}
