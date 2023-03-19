import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_swiper_plus/flutter_swiper_plus.dart';

import '../../../components/carousel_sliders/carousel_slider_indicator_view.dart';
import '../../../components/images/image_view.dart';
import '../../../constants/extensions/media_query_extension.dart';
import '../../../constants/themes/app_colors.dart';
import '../../../constants/url.dart';
import '../../../models/image/image.dart' as model;

class PlantImageView extends HookWidget {
  final List<model.Image> images;
  const PlantImageView({
    super.key,
    required this.images,
  });

  @override
  Widget build(BuildContext context) {
    final controller = useState(SwiperController());
    final currentIndex = useState(0);
    return SizedBox(
      height: context.height * 0.5,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            height: context.height * 0.42,
            decoration: BoxDecoration(
              color: AppColors.white100,
              borderRadius: BorderRadius.circular(16),
            ),
            margin: const EdgeInsets.symmetric(horizontal: 10),
          ),
          Positioned(
            bottom: -70,
            right: 0,
            left: 0,
            child: SizedBox(
              height: context.height * 0.58,
              child: Swiper(
                loop: true,
                autoplay: true,
                itemCount: images.length,
                controller: controller.value,
                itemBuilder: (BuildContext context, int index) {
                  return ImageView(
                    height: context.height * 0.58,
                    image: "${Url.images}/${images.first.path}",
                    fit: BoxFit.fitHeight,
                  );
                },
                onIndexChanged: (int index) {
                  currentIndex.value = index;
                },
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: CarouselSliderIndicatorView(
              index: currentIndex.value,
              length: images.length,
            ),
          ),
        ],
      ),
    );
  }
}
