import 'package:flutter/material.dart';

import '../../constants/themes/values_manager.dart';
import '../../widgets/home/app_bar_icons.dart';
import '../../widgets/home/welcome_user.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = 'home';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(8.0),
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
          children: const [],
        ),
      ),
    );
  }
}
