import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CircleAvatar(
          radius: 70,
          child: Icon(
            Iconsax.home,
            size: 80,
          ),
        ),
        Text(
          "Home",
          style: TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}
