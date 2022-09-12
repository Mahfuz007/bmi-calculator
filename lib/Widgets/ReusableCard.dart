import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  const ReusableCard({Key? key,  this.color, this.child}) : super(key: key);
  final child;
  final color;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
      height: 150.0,
      // width: 200.0,
      decoration: BoxDecoration(
        color: const Color(0xFF1D1F33),
        borderRadius: BorderRadius.circular(10.0),
      ),
      margin: const EdgeInsets.all(15.0),
    );
  }
}
