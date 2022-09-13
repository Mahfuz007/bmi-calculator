import 'package:flutter/material.dart';

class FloatingButton extends StatelessWidget {
  const FloatingButton({Key? key, required this.child, required this.onPressed})
      : super(key: key);
  final Widget child;
  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: child,
      style: TextButton.styleFrom(
        shape: const CircleBorder(),
        padding: const EdgeInsets.all(15),
        backgroundColor: const Color(0xFF090C22),
        primary: const Color(0xFFFFFFFF),
      ),
    );
  }
}
