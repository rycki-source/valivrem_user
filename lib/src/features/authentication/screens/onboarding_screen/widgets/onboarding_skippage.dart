import 'package:flutter/material.dart';
import 'package:valivrem/src/features/authentication/controllers/onboarding_controller.dart';

import '../../../../../constants/size.dart';
import '../../../../utils/device_utility/device_utility.dart';

class OnBoardingSkippPage extends StatelessWidget {
  const OnBoardingSkippPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: TDeviceUtils.getAppBarHeight(),
      right: TSizes.defaultSpace,
      child: TextButton(
        onPressed: () => OnBoardingController.instance.skipPage(),
        child: const Text('Skip'),
      ),
    );
  }
}
