import 'package:flutter/material.dart';
import 'package:valivrem/src/constants/size.dart';
import 'package:valivrem/src/features/authentication/screens/signup_screen/widgets/signup_footer_widget.dart';
import 'package:valivrem/src/features/authentication/screens/signup_screen/widgets/signup_form.dart';
import 'package:valivrem/src/features/authentication/screens/signup_screen/widgets/signup_header_widget.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(tDefaultSize),
            child: const Column(
              children: [
                SignUpHeaderWidget(),
                SizedBox(
                  height: TSizes.spaceBtwSections,
                ),
                SignUpForm(),
                SizedBox(
                  height: TSizes.spaceBtwSections,
                ),
                SignUpFooterWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
