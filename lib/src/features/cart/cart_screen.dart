import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CircleAvatar(
          radius: 70,
          child: Icon(
            Icons.shopping_cart_outlined,
            size: 80,
          ),
        ),
        Text(
          "Cart",
          style: TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}
