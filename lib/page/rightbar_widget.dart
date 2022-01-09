import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class RightBar extends StatelessWidget {
  final double width;
  final double height;

  const RightBar({
    Key? key,
    this.width = 34,
    this.height = 599,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Column(
        children: [
          Container(
            alignment: Alignment.bottomCenter,
            width: width * 1,
            height: height * 0.13,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(width * 0.50),
              ),
              color: const Color(0xffCC1416),
            ),
          ),
          SizedBox(
            width: width * 1,
            height: height * 0.008,
          ),
          Container(
            width: width * 1,
            height: height * 0.68,
            color: const Color(0xffCC1416),
          ),
          Container(
            width: width * 1,
            height: height * 0.008,
            color: const Color(0xffA51A17),
          ),
          Container(
            width: width * 1,
            height: height * 0.16,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(width * 0.50),
              ),
              color: const Color(0xffCC1416),
            ),
          )
        ],
      ),
    );
  }
}
