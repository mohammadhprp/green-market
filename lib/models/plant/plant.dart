import '../image/image.dart';

class Plant {
  final int id;
  final String name;
  final double price;
  final String type;
  final double height;
  final double potSize;
  final String potType;
  final String about;
  final List<Image> images;

  Plant({
    required this.id,
    required this.name,
    required this.price,
    required this.type,
    required this.height,
    required this.potSize,
    required this.potType,
    required this.about,
    required this.images,
  });
}
