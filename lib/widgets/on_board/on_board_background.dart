import 'package:flutter/material.dart';
import '../../constants/app/app_assets.dart';
import '../../constants/extensions/media_query_extension.dart';

import '../../components/images/image_view.dart';

class OnBoardBackground extends StatelessWidget {
  const OnBoardBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return ImageView(
      image: AppAssets.onBoard1,
      height: context.height,
      width: context.width,
      fit: BoxFit.cover,
    );
  }
}
