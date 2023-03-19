import 'package:flutter/foundation.dart' show immutable;

@immutable
class Url {
  static const url =
      'https://raw.githubusercontent.com/mohammadhprp/green-market/master';

  static const storage = '$url/storage';
  static const images = '$storage/images';
  const Url._();
}
