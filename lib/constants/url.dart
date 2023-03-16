import 'package:flutter/foundation.dart' show immutable;

@immutable
class Url {
  static const url = 'https://github.com/mohammadhprp/green-market/blob/master';

  static const storage = '$url/storage';
  static const images = '$storage/images';
  const Url._();
}
