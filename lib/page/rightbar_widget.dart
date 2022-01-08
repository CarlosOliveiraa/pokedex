import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class RightBar extends StatelessWidget {
  final double width;
  final double height;

  const RightBar({
    Key? key,
    this.width = 37,
    this.height = 599,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      child: Container(
        alignment: Alignment.bottomCenter,
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(width * 0.50),
            bottomLeft: Radius.circular(width * 0.50),
          ),
          color: const Color(0xffCC1416),
        ),
        child: Stack(
          children: [
            LayoutBuilder(
              builder: (context, constraints) {
                return Container(
                  width: 34,
                  height: 5,
                  color: const Color(0xffA51A17),
                );
              },
            ),
            const SizedBox(
              height: 97,
            )
          ],
        ),
      ),
    );
  }
}
