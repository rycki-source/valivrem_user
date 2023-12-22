import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
//import 'package:valivrem/navigationbar.dart';
import 'package:valivrem/src/features/authentication/screens/signup_screen/verify_email.dart';
import '../../../../../constants/color.dart';
import '../../../../../constants/size.dart';
import '../../../../../constants/text_strings.dart';
import '../../../../utils/helpers/helper_functions.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final darkMode = THelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: TextFormField(
                expands: false,
                decoration: const InputDecoration(
                  labelText: tFirstName,
                  hintText: tFirstName,
                  prefixIcon: Icon(Iconsax.user),
                ),
              ),
            ),
            const SizedBox(width: TSizes.spaceBtwInputFields),
            Expanded(
              child: TextFormField(
                expands: false,
                decoration: const InputDecoration(
                    labelText: tSirName,
                    hintText: tSirName,
                    prefixIcon: Icon(Iconsax.user)),
              ),
            )
          ],
        ),
        const SizedBox(
          height: TSizes.spaceBtwInputFields,
        ),
        TextFormField(
          decoration: const InputDecoration(
            prefixIcon: Icon(
              Iconsax.user_edit,
            ),
            labelText: tUsername,
            hintText: tUsername,
          ),
        ),
        const SizedBox(
          height: TSizes.spaceBtwInputFields,
        ),
        TextFormField(
          decoration: const InputDecoration(
            prefixIcon: Icon(
              Iconsax.direct,
            ),
            labelText: tEmail,
            hintText: tEmail,
          ),
        ),
        const SizedBox(
          height: TSizes.spaceBtwInputFields,
        ),
        TextFormField(
          decoration: const InputDecoration(
            prefixIcon: Icon(
              Iconsax.call,
            ),
            labelText: tPhoneNo,
            hintText: tPhoneNo,
          ),
        ),
        const SizedBox(
          height: TSizes.spaceBtwInputFields,
        ),
        TextFormField(
          decoration: const InputDecoration(
            prefixIcon: Icon(
              Iconsax.password_check,
            ),
            labelText: tPassword,
            hintText: tPassword,
            suffixIcon: IconButton(
              onPressed: null,
              icon: Icon(
                Iconsax.eye_slash,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: TSizes.spaceBtwInputFields,
        ),
        TextFormField(
          decoration: const InputDecoration(
            prefixIcon: Icon(
              Iconsax.password_check,
            ),
            labelText: 'Comfirm Password',
            hintText: 'Comfirm Password',
            suffixIcon: Icon(
              Iconsax.eye_slash,
            ),
          ),
        ),
        const SizedBox(
          height: TSizes.spaceBtwInputFields,
        ),
        Row(
          children: [
            SizedBox(
              width: 24.0,
              height: 24.0,
              child: Checkbox(
                value: true,
                onChanged: (value) {},
              ),
            ),
            const SizedBox(width: TSizes.spaceBtwItems),
            Text.rich(TextSpan(children: [
              TextSpan(
                  text: iAgreeTo, style: Theme.of(context).textTheme.bodySmall),
              TextSpan(
                  text: privacyPolicy,
                  style: Theme.of(context).textTheme.bodyMedium!.apply(
                        color: darkMode ? TColors.white : TColors.primary,
                        decoration: TextDecoration.underline,
                        decorationColor:
                            darkMode ? TColors.white : TColors.primary,
                      )),
              TextSpan(text: and, style: Theme.of(context).textTheme.bodySmall),
              TextSpan(
                  text: termsOfUse,
                  style: Theme.of(context).textTheme.bodyMedium!.apply(
                        color: darkMode ? TColors.white : TColors.primary,
                        decoration: TextDecoration.underline,
                        decorationColor:
                            darkMode ? TColors.white : TColors.primary,
                      )),
            ])),
          ],
        ),
        const SizedBox(
          height: TSizes.spaceBtwSections,
        ),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {
              // Get.to(() => const NavigationBarScreen());
              Get.to(() => const VerifyEmailScreen());
            },
            child: const Text(tSignup),
          ),
        )
      ],
    );
  }
}
