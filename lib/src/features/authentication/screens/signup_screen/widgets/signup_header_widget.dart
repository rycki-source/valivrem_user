import 'package:flutter/material.dart';
import 'package:valivrem/src/constants/text_strings.dart';
// ignore: unused_import
import 'package:valivrem/src/constants/image_url.dart';

class SignUpHeaderWidget extends StatelessWidget {
  const SignUpHeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /*Image.asset(
          ImageUrl.assetsImageSignUp,
        ),*/
        Text(
          tSignUpTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        Text(
          tSignUpSubTitle,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ],
    );
  }
}
