import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:valivrem/src/constants/size.dart';
import 'package:valivrem/src/constants/text_strings.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(tDefaultSize),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              tOptTitlt,
              style: TextStyle(
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.bold,
                  fontSize: 80.0),
            ),
            Text(
              tOtpSubTitle.toUpperCase(),
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(
              height: 20.0,
            ),
            const Text(
              tOtpMessage,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30.0),
            OtpTextField(
              mainAxisAlignment: MainAxisAlignment.center,
              numberOfFields: 6,
              fillColor: Colors.black.withOpacity(0.2),
              filled: true,
              onSubmit: (code) {
                print("Otp is => $code");
              },
            ),
            const SizedBox(height: 20.0),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text(tNext),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
