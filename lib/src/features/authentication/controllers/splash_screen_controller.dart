import 'package:get/get.dart';
//import 'package:valivrem/src/features/authentication/screens/login_screen/login.dart';
import 'package:valivrem/src/features/authentication/screens/onboarding_screen/onboarding_screen.dart';

//import '../screens/on_boarding/on_boarding_screen.dart';

class SplashScreenController extends GetxController {
  static SplashScreenController get find => Get.find();
  RxBool animate = false.obs;

  Future startAnimation() async {
    await Future.delayed(const Duration(seconds: 2));

    animate.value = true;

    await Future.delayed(const Duration(seconds: 6));
    // Get.to(() => const OnBoardingScreen());
    Get.to(() => const OnBoardingScreen());
  }
}
