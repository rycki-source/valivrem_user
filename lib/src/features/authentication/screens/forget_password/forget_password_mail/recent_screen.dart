import 'package:flutter/material.dart';
import '../../../../../constants/image_url.dart';
import '../../../../../constants/size.dart';
import '../../../../../constants/text_strings.dart';
import '../../login_screen/widgets/login_header_widget.dart';

class ResetScreen extends StatelessWidget {
  const ResetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
            child: Container(
          padding: const EdgeInsets.all(tDefaultSize),
          child: Column(children: [
            const SizedBox(
              height: tDefaultSize * 4,
            ),
            const FormHeaderWidget(
              image: ImageUrl.assetsImageLandingTrusted,
              title: tChangeYourPasswordTitle,
              subTitle: tChangeYourPasswordSubTitle,
              crossAxisAlignment: CrossAxisAlignment.center,
              heightBetween: 30.0,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: tFormHeight,
            ),
            const SizedBox(height: 30.0),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Done'),
              ),
            ),
            const SizedBox(height: 30.0),
            SizedBox(
              width: double.infinity,
              child: TextButton(
                onPressed: () {},
                child: const Text(tResendEmail),
              ),
            ),
          ]),
        )),
      ),
    );
  }
}
