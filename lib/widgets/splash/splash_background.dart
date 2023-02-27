import 'package:flutter/material.dart';
import 'package:green_market/constants/app/app_assets.dart';
import 'package:green_market/constants/extensions/media_query_extension.dart';

import '../../components/images/image_asset_view.dart';

class SplashBackground extends StatelessWidget {
  const SplashBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return ImageAssetView(
      image: AppAssets.splash,
      height: context.height,
      width: context.width,
      fit: BoxFit.cover,
    );
  }
}
