import 'package:flutter/material.dart';

class SquareShape extends StatelessWidget {
  const SquareShape({super.key, required this.child});
  final String child;

  @override
  Widget build(BuildContext context) {
    return 
      Padding(
             padding: const EdgeInsets.all(8.0),
             child: Container(
              color: Colors.green,
              height: 200,
              child: Center(
                child: Text(
                  child,
                  style: TextStyle(
                    fontSize: 40
                  ),
                )
              
              ),
             ),
           );
  }
}