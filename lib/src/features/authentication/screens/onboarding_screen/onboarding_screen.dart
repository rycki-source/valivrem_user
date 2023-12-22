import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:valivrem/src/constants/text_strings.dart';
import 'package:valivrem/src/features/authentication/controllers/onboarding_controller.dart';
import 'package:valivrem/src/features/authentication/screens/onboarding_screen/widgets/onboarding_dot_navigation.dart';
import 'package:valivrem/src/features/authentication/screens/onboarding_screen/widgets/onboarding_next.dart';
import 'package:valivrem/src/features/authentication/screens/onboarding_screen/widgets/onboarding_page.dart';
import 'package:valivrem/src/features/authentication/screens/onboarding_screen/widgets/onboarding_skippage.dart';
import '../../../../constants/image_url.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: ImageUrl.assetsImageLandingCheckout,
                title: tOnBoardingTitle1,
                subTitle: tOnBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: ImageUrl.assetsImageLandingChooseLocation,
                title: tOnBoardingTitle2,
                subTitle: tOnBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: ImageUrl.assetsImageLandingDeliveryMan,
                title: tOnBoardingTitle3,
                subTitle: tOnBoardingSubTitle3,
              ),
            ],
          ),

          // skip button
          const OnBoardingSkippPage(),

          // Dot Navigation smoothPageIndicator
          const OnBoardingDotNavigation(),

          // circular Button
          const OnBoardingNextPage(),
        ],
      ),
    );
  }
}
