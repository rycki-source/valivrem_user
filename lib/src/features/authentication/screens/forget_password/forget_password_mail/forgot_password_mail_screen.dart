import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:iconsax/iconsax.dart';
import 'package:valivrem/src/constants/size.dart';
import 'package:valivrem/src/constants/text_strings.dart';
import 'package:valivrem/src/features/authentication/screens/forget_password/forget_password_mail/recent_screen.dart';

import '../../../../../constants/image_url.dart';
import '../../login_screen/widgets/login_header_widget.dart';

class ForgotPasswordMailScreen extends StatelessWidget {
  const ForgotPasswordMailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(tDefaultSize),
            child: Column(
              children: [
                const SizedBox(
                  height: tDefaultSize * 4,
                ),
                const FormHeaderWidget(
                  image: ImageUrl.assetsImageForgot,
                  title: tForgetPassword,
                  subTitle: tForgetPasswordSubTitle,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  heightBetween: 30.0,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: tFormHeight,
                ),
                Form(
                  child: Column(children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: tEmail,
                        hintText: tEmail,
                        prefixIcon: Icon(
                          Iconsax.direct,
                        ),
                      ),
                    ),
                    const SizedBox(height: 30.0),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () => Get.to(
                          () => const ResetScreen(),
                        ),
                        child: const Text(tContinue),
                      ),
                    ),
                  ]),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
