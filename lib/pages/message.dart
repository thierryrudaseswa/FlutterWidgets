

import 'package:flutter/material.dart';

class Message extends StatelessWidget {
  const Message({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        body: Column(
          children: [
            Container(
          child: Text("Message Page"),
            )
          ],
        ),
      ),
    );
  }
}