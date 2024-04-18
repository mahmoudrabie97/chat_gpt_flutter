import 'package:flutter/material.dart';

class CustomPageIndicator extends StatelessWidget {
  const CustomPageIndicator({super.key, required this.isActive});
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 9),
      width: isActive ? 40 : 30,
      height: isActive ? 5 : 2,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        color: isActive ? const Color(0xff10A37F) : Colors.grey,
      ),
    );
  }
}
