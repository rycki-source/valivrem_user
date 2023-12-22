import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:valivrem/bottomnav_screen.dart';

import 'package:valivrem/src/features/authentication/screens/signup_screen/signup_screen.dart';

import '../../../../../constants/color.dart';
import '../../../../../constants/size.dart';
import '../../../../../constants/text_strings.dart';
// ignore: unused_import
import '../../../../utils/helpers/helper_functions.dart';
import '../../forget_password/forget_password_option/fotget_password_modal_btn_sheet.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    //final dark = THelperFunctions.isDarkMode(context);
    return Form(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: tFormHeight - 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(
                  Iconsax.direct_right,
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
              height: TSizes.spaceBtwInputFields / 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(children: [
                  Checkbox(
                    value: true,
                    onChanged: (value) {},
                  ),
                  const Text('Remember me'),
                ]),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                      ForgetPasswordScreen.buildshowModalBottomSheet(context);
                    },
                    child: const Text(
                      tForgetPassword,
                      style: TextStyle(color: TColors.info),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: TSizes.spaceBtwSections,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Get.to(() =>
                      const BottomNavScreen() /*const NavigationBarScreen()*/);
                },
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(TColors.primary),
                ),
                child: Text(tLogin.toUpperCase()),
              ),
            ),
            const SizedBox(
              height: TSizes.spaceBtwSections,
            ),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {
                  Get.to(() => const SignUpScreen());
                },
                child: Text('Create Account'.toUpperCase()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
