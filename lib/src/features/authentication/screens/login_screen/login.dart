import 'package:flutter/material.dart';
import 'package:valivrem/src/constants/size.dart';
import 'package:valivrem/src/constants/text_strings.dart';
import 'package:valivrem/src/features/authentication/screens/login_screen/widgets/login_footer_widget.dart';
import 'package:valivrem/src/features/authentication/screens/login_screen/widgets/login_form_widget.dart';
import 'package:valivrem/src/features/authentication/screens/login_screen/widgets/login_header_widget.dart';

import '../../../../constants/image_url.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(tDefaultSize),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FormHeaderWidget(
                  image: ImageUrl.assetsImageLogin,
                  title: tLoginTitle,
                  subTitle: tLoginSubTitle,
                ),
                LoginForm(),
                LoginFooterWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
