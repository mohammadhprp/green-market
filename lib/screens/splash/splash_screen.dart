import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import '../on_board/on_board_screen.dart';
import '../../state/providers/user_providers/user_data_provider.dart';
import '../../widgets/splash/splash_background.dart';
import '../../widgets/splash/splash_text_animation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../constants/themes/values_manager.dart';
import '../home/home_screen.dart';

class SplashScreen extends StatefulHookConsumerWidget {
  static const routeName = 'splash';
  const SplashScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen> {
  Future _firstLaunchCheck() async {
    bool isFirstTime = await ref.read(hasUserLaunchedAppProvider);
    if (!isFirstTime) {
      _push(const OnBoardScreen());
      return;
    }
    _push(const HomeScreen());
    return;
  }

  void _push(Widget screen) {
    Future.delayed(
      const Duration(seconds: DurationConstant.d3),
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => screen),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    useEffect(() {
      _firstLaunchCheck();

      return () {};
    });
    return Scaffold(
      body: Stack(
        children: const [
          SplashBackground(),
          SplashAnimationText(),
        ],
      ),
    );
  }
}
