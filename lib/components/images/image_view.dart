import 'package:flutter/material.dart';
import '../../constants/extensions/image_extension.dart';

import '../../constants/enum/image_type.dart';

class ImageView extends StatelessWidget {
  final String image;
  final double? height;
  final double? width;
  final double? radius;
  final BoxFit? fit;

  const ImageView({
    super.key,
    required this.image,
    this.height,
    this.width,
    this.radius,
    this.fit,
  });

  @override
  Widget build(BuildContext context) {
    final imageType = image.imageType;
    return SizedBox(
      height: height,
      width: width,
      child: ClipRRect(
        borderRadius: BorderRadius.all(
          Radius.circular(radius ?? 0),
        ),
        child: Builder(
          builder: (context) {
            switch (imageType) {
              case ImageType.network:
                return Image.network(
                  image,
                  fit: fit,
                );
              case ImageType.asset:
                return Image.asset(
                  image,
                  fit: fit,
                );
            }
          },
        ),
      ),
    );
  }
}
