import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CircleAvatar(
          radius: 70,
          child: Icon(
            Iconsax.like,
            size: 80,
          ),
        ),
        Text(
          "Favorite",
          style: TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}
