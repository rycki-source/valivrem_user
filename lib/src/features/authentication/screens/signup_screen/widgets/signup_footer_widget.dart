import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:valivrem/navigationbar.dart';
import 'package:valivrem/src/features/utils/helpers/helper_functions.dart';
import '../../../../../constants/color.dart';
import '../../../../../constants/image_url.dart';
import '../../../../../constants/size.dart';

class SignUpFooterWidget extends StatelessWidget {
  const SignUpFooterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: Divider(
                color: dark ? TColors.darkGrey : TColors.grey,
                thickness: 0.5,
                indent: 60,
                endIndent: 5,
              ),
            ),
            const Text('OR SignUP in With'),
            Flexible(
              child: Divider(
                color: dark ? TColors.darkGrey : TColors.grey,
                thickness: 0.5,
                indent: 5,
                endIndent: 60,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: TSizes.spaceBtwSections,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: TColors.grey),
                borderRadius: BorderRadius.circular(100),
              ),
              child: IconButton(
                  onPressed: () {},
                  icon: Image.asset(ImageUrl.assetsImageGoogle,
                      width: TSizes.iconMd, height: TSizes.iconMd)),
            ),
            const SizedBox(
              width: TSizes.spaceBtwItems,
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: TColors.grey),
                borderRadius: BorderRadius.circular(100),
              ),
              child: IconButton(
                  onPressed: () {},
                  icon: Image.asset(ImageUrl.assetsImageFacebook,
                      width: TSizes.iconMd, height: TSizes.iconMd)),
            ),
            const SizedBox(
              width: TSizes.spaceBtwItems,
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: TColors.grey),
                borderRadius: BorderRadius.circular(100),
              ),
              child: IconButton(
                  onPressed: () {},
                  icon: Image.asset(ImageUrl.assetsImageLinkedin,
                      width: TSizes.iconMd, height: TSizes.iconMd)),
            ),
          ],
        ),
        const SizedBox(
          width: TSizes.spaceBtwItems,
        ),
        TextButton(
          onPressed: () {
            Get.to(() => const NavigationBarScreen());
          },
          child: Text.rich(
            TextSpan(
              text: 'Would you want to enter as a',
              style: Theme.of(context).textTheme.bodyMedium,
              children: const [
                TextSpan(
                  text: 'Guess',
                  style: TextStyle(color: TColors.primary),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
