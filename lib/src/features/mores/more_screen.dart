import 'package:flutter/material.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CircleAvatar(
          radius: 70,
          child: Icon(
            Icons.more_rounded,
            size: 80,
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Text(
          "More",
          style: TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}
