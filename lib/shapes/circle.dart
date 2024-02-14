

import 'package:flutter/material.dart';

class CircleShape extends StatelessWidget {
  const CircleShape({super.key});

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
       
        width: 70,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Colors.pink,
        ),
      ),
    );
  }
}