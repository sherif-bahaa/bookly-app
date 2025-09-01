import 'package:bookly_app/core/utils/assets_data.dart';
import 'package:bookly_app/features/home/prsentation/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:get/utils.dart';

class SplashViweBody extends StatefulWidget {
  const SplashViweBody({super.key});

  @override
  State<SplashViweBody> createState() => _SplashViweBodyState();
}

class _SplashViweBodyState extends State<SplashViweBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    navigateToHome();
    // slidingAnimation.addListener(() {
    //   setState(() {});
    // });
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
        const SizedBox(height: 20),
        AnimatedBuilder(
          animation: slidingAnimation,
          builder: (context, _) {
            return SlideTransition(
              position: slidingAnimation,
              child: const Text(
                "Read free books",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            );
          },
        ),
      ],
    );
  }

  // tarnsation
  void initSlidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );
    slidingAnimation = Tween<Offset>(
      begin: Offset(0, 3),
      end: Offset(0, 0),
    ).animate(animationController);
    animationController.forward();
  }
  // navigation

  void navigateToHome() {
    Future.delayed(const Duration(seconds: 3), () {
      Get.to(
        () => HomeView(),
        transition: Transition.fadeIn,
        duration: Duration(seconds: 1),
      );
    });
  }
}
