import 'package:book_store/Core/utilits/assetsManager/assets.dart';
import 'package:book_store/Features/Splash/presentaion_layer/views/SplashViews/LinearAnimation.dart';
import 'package:flutter/material.dart';

class splashScreenBody extends StatefulWidget {
  const splashScreenBody({super.key});

  @override
  State<splashScreenBody> createState() => _splashScreenBodyState();
}

class _splashScreenBodyState extends State<splashScreenBody>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<Offset> textanimation;
  late Animation<Offset> imageanimation;
  @override
  void initState() {
    InitSlidingAnimation();
    super.initState();
  }

  void InitSlidingAnimation() {
     controller =
        AnimationController(duration: const Duration(seconds: 2), vsync: this);
    textanimation = Tween<Offset>(begin: const Offset(0, 1), end: Offset.zero)
        .animate(controller);
    imageanimation =
        Tween<Offset>(begin: const Offset(0, -0.2), end: Offset.zero)
            .animate(controller);
    controller.forward();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomLinearAnimation(
          animation: imageanimation,
          widget: Image.asset(AsstetsManager.logo),
        ),
        const Text(
          "Book Haven",
          style: TextStyle(
              color: Colors.white60, fontSize: 45, fontWeight: FontWeight.bold),
        ),
        CustomLinearAnimation(
          animation: textanimation,
          widget: Container(
            child: Column(children: const [
              Text(
                "Expand your mind!",
                style: TextStyle(color: Colors.white30, fontSize: 20),
              ),
              Text(
                "with free books.",
                style: TextStyle(color: Colors.white30, fontSize: 15),
              ),
            ]),
          ),
        ),
      ],
    );
  }
}
