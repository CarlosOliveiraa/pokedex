import 'package:flutter/material.dart';

class LedScreenButton extends StatelessWidget {

  final double size;

  const LedScreenButton({ Key? key, this.size = 16}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Color(0xffE51D20),
      ),
    );
  }
}