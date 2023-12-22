import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:valivrem/src/features/utils/helpers/helper_functions.dart';

import '../../../../../constants/size.dart';

class FormHeaderWidget extends StatelessWidget {
  const FormHeaderWidget({
    super.key,
    this.imageColor,
    required this.image,
    required this.title,
    required this.subTitle,
    this.imageHeight = 0.2,
    this.heightBetween,
    this.textAlign,
    this.crossAxisAlignment = CrossAxisAlignment.start,
  });

  /*  Variables  -- Declared in constructor*/

  final Color? imageColor;
  final String image;
  final String title, subTitle;
  final double imageHeight;
  final double? heightBetween;
  final TextAlign? textAlign;
  final CrossAxisAlignment crossAxisAlignment;

  @override
  Widget build(BuildContext context) {
    //final dark = THelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: crossAxisAlignment,
      children: [
        Image.asset(
          image,
          height: 150,
          color: imageColor,
        ),
        Text(
          title,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        const SizedBox(
          height: TSizes.sm,
        ),
        Text(
          subTitle,
          textAlign: textAlign,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ],
    );
  }
}
