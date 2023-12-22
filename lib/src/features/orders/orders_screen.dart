import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CircleAvatar(
          radius: 70,
          child: Icon(
            Iconsax.note,
            size: 80,
          ),
        ),
        Text(
          "Orders",
          style: TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}
