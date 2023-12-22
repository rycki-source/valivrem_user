import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:valivrem/src/features/authentication/screens/forget_password/forget_password_option/forgot_password_btn_widget.dart';
import 'package:valivrem/src/features/authentication/screens/forget_password/forget_password_otp/otp_screen.dart';

import '../../../../../constants/size.dart';
import '../../../../../constants/text_strings.dart';
import '../forget_password_mail/forgot_password_mail_screen.dart';

class ForgetPasswordScreen {
  static Future<dynamic> buildshowModalBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25.0),
      ),
      builder: (context) => Container(
        padding: const EdgeInsets.all(tDefaultSize),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              tForgetPasswordTitle,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(
              tForgetPasswordSubTitle,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(
              height: 30.0,
            ),
            ForgotPasswordBtnWidget(
              title: tEmail,
              subTitle: tResetViaEMail,
              btnIcon: Icons.mail_outline_rounded,
              onTap: () {
                Navigator.pop(context);
                Get.to(() => const ForgotPasswordMailScreen());
              },
            ),
            const SizedBox(
              height: 20.0,
            ),
            ForgotPasswordBtnWidget(
              title: tPhoneNo,
              subTitle: tResetViaPhone,
              btnIcon: Icons.mobile_friendly_rounded,
              onTap: () {
                Navigator.pop(context);
                Get.to(() => const OtpScreen());
              },
            ),
          ],
        ),
      ),
    );
  }
}
