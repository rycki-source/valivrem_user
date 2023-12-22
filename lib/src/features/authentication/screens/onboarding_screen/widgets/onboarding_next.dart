import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:valivrem/src/features/authentication/controllers/onboarding_controller.dart';

import '../../../../../constants/color.dart';
import '../../../../../constants/size.dart';
import '../../../../utils/device_utility/device_utility.dart';

class OnBoardingNextPage extends StatelessWidget {
  const OnBoardingNextPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: TDeviceUtils.getBottomNavigationBarHeight(),
      right: TSizes.defaultSpace,
      child: ElevatedButton(
        onPressed: () => OnBoardingController.instance.nextPage(),
        style: ElevatedButton.styleFrom(
            shape: const CircleBorder(), backgroundColor: TColors.primary),
        child: const Icon(Iconsax.arrow_right_3),
      ),
    );
  }
}
