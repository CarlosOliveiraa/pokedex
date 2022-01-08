import 'package:flutter/material.dart';

class CircleWidget extends StatelessWidget {
  final double size;

  const CircleWidget({
    Key? key,
    this.size = 12,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Color(0xff182022),
      ),
    );
  }
}
