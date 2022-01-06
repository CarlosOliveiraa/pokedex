import 'package:flutter/material.dart';

class FrameLamp extends StatelessWidget {
  final double size;

  const FrameLamp({
    Key? key,
    this.size = 88,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: const Color(0xffD9E8EB),
        border: Border.all(color: const Color(0xffAD282A), width: size * 0.002),
      ),
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Container(
            alignment: Alignment.topLeft,
            width: constraints.maxWidth * 0.77,
            height: constraints.maxHeight * 0.77,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              gradient: RadialGradient(
                radius: 0.9,
                stops: [0.4, 0.5],
                colors: [
                  Color(0xff3BC4FA),
                  Color(0xff1778D5),
                ],
              ),
              color: Color(0xff3BC4FA),
            ),
            child: Container(
              width: constraints.maxWidth * 0.2,
              height: constraints.maxHeight * 0.2,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: RadialGradient(
                    colors: [
                      Color(0xffFFFFFF),
                      Color(0xff3AC2F9),
                    ],
                  )),
            ),
          );
        },
      ),
    );
  }
}