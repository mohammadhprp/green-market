import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_swiper_plus/flutter_swiper_plus.dart';
import 'package:green_market/constants/extensions/media_query_extension.dart';
import 'package:green_market/constants/mock/on_board_data.dart';
import 'package:green_market/constants/themes/values_manager.dart';

import '../../components/carousel_sliders/carousel_slider_indicator_view.dart';
import 'on_board_slider_item.dart';

class OnBoardSlider extends HookWidget {
  const OnBoardSlider({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = useState(SwiperController());
    final currentIndex = useState(0);
    final list = OnBoardData.list;
    return Column(
      children: [
        SizedBox(
          height: context.height * 0.14,
          child: Swiper(
            loop: false,
            autoplay: true,
            itemCount: list.length,
            controller: controller.value,
            itemBuilder: (BuildContext context, int index) {
              final onBoard = list[index];
              return OnBoardSliderItem(onBoard: onBoard);
            },
            onIndexChanged: (int index) {
              currentIndex.value = index;
            },
          ),
        ),
        const SizedBox(height: AppSize.s12),
        CarouselSliderIndicatorView(
          index: currentIndex.value,
          length: list.length,
        ),
        const SizedBox(height: AppSize.s45),
      ],
    );
  }
}
