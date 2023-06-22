import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key, required this.titile});

  final String titile;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          titile,
          style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        const Spacer(),
        const Icon(
          Icons.cast,
          color: Colors.white,
          size: 30,
        ),
        const SizedBox(
          width: 10,
        ),
        Container(width: 40, height: 40, color: Colors.blue),
        const SizedBox(
          width: 10,
        )
      ],
    );
  }
}
