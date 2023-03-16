import 'package:flutter/material.dart';

import '../../components/icon/icon_view.dart';
import '../../constants/app/app_icons.dart';
import '../../constants/themes/values_manager.dart';

class AppBarIcons extends StatelessWidget {
  const AppBarIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: const [
        IconView(
          icon: AppIcons.shoppingBag,
          height: AppSize.s22,
        ),
        SizedBox(width: AppSize.s18),
        IconView(
          icon: AppIcons.sliderAlt,
          height: AppSize.s22,
        ),
      ],
    );
  }
}
