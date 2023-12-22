import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../constants/color.dart';
import '../../../../constants/image_url.dart';
import '../../../../constants/size.dart';
import '../../../../constants/text_strings.dart';
import '../../controllers/splash_screen_controller.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});

  final splashController = Get.put(SplashScreenController());

  @override
  Widget build(BuildContext context) {
    splashController.startAnimation();
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Obx(
              () => AnimatedPositioned(
                duration: const Duration(milliseconds: 1600),
                top: splashController.animate.value ? 0 : -10,
                right: splashController.animate.value ? 0 : -5,
                child: Image.asset(ImageUrl.assetsImageLog1,
                    width: 80, height: 70, fit: BoxFit.fill),
              ),
            ),
            Obx(
              () => AnimatedPositioned(
                duration: const Duration(milliseconds: 1600),
                top: 50,
                left: splashController.animate.value ? tDefaultSize : -80,
                child: AnimatedOpacity(
                  duration: const Duration(milliseconds: 1600),
                  opacity: splashController.animate.value ? 1.0 : 0.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(tAppName,
                          style: Theme.of(context).textTheme.displayMedium),
                      Text(tAppTagLine,
                          style: Theme.of(context).textTheme.headlineMedium),
                    ],
                  ),
                ),
              ),
            ),
            Obx(
              () => AnimatedPositioned(
                duration: const Duration(milliseconds: 2000),
                bottom: splashController.animate.value ? 100 : 0,
                child: AnimatedOpacity(
                  duration: const Duration(milliseconds: 1600),
                  opacity: splashController.animate.value ? 1.0 : 0.0,
                  child: Image.asset(
                    ImageUrl.assetsImageLogo1,
                    width: 380,
                    height: 420,
                    fit: BoxFit.cover,
                    alignment: Alignment.center,
                  ),
                ),
              ),
            ),
            Obx(
              () => AnimatedPositioned(
                duration: const Duration(milliseconds: 1900),
                bottom: splashController.animate.value ? 80 : 0,
                right: tDefaultSize,
                child: AnimatedOpacity(
                  duration: const Duration(milliseconds: 1600),
                  opacity: splashController.animate.value ? 1.0 : 0.0,
                  child: Container(
                    width: tSplashContainerSize,
                    height: tSplashContainerSize,
                    decoration: BoxDecoration(
                      color: TColors.primary,
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
