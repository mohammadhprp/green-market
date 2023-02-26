import 'package:flutter/material.dart';

class ImageAssetView extends StatelessWidget {
  final String image;
  final double? height;
  final double? width;
  final double? radius;
  final BoxFit? fit;

  const ImageAssetView({
    super.key,
    required this.image,
    this.height,
    this.width,
    this.radius,
    this.fit,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ClipRRect(
        borderRadius: BorderRadius.all(
          Radius.circular(radius ?? 0),
        ),
        child: Image.asset(
          image,
          fit: fit,
        ),
      ),
    );
  }
}
