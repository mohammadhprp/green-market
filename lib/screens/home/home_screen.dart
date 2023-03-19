import 'package:flutter/material.dart';

import '../../constants/themes/values_manager.dart';
import '../../widgets/home/app_bar_icons.dart';
import '../../widgets/home/search_bar_view.dart';
import '../../widgets/home/welcome_user.dart';
import '../../widgets/plant/plant_home_view/plant_section.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = 'home';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(AppPadding.p8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              WelcomeUser(),
              AppBarIcons(),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppPadding.p23),
        child: Column(
          children: const [
            SearchBarView(),
            SizedBox(height: AppSize.s30),
            Expanded(
              child: PlantSection(),
            ),
          ],
        ),
      ),
    );
  }
}
