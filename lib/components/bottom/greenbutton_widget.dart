import 'package:flutter/material.dart';

class GreenButton extends StatelessWidget {
  final double width;
  final double height;

  const GreenButton({Key? key, this.width = 93, this.height = 48})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        border: Border.all(
          width: width * 0.01,
          color: const Color(0xff5C743A),
        ),
        borderRadius: BorderRadius.circular(width * 0.13),
        color: const Color(0xff49B15C),
      ),
    );
  }
}
