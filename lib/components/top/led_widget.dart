import 'package:flutter/material.dart';

enum Led { redLed, yellowled, greenLed }

class LedWidget extends StatelessWidget {
  final double size;
  final Led led;

  const LedWidget({Key? key, this.size = 12, this.led = Led.redLed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    late Decoration decoration;

    switch (led) {
      case Led.redLed:
        decoration = BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: const Color(0xffBC1F21),
            width: size * 0.08,
          ),
          gradient: const RadialGradient(
            colors: [
              Color(0xffFF9282),
              Color(0xffE0433F),
            ],
            stops: [0, 1],
          ),
        );
        break;
      case Led.yellowled:
        decoration = BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: const Color(0xffEA960A),
            width: size * 0.08,
          ),
          gradient: const RadialGradient(
            colors: [
              Color(0xffFEDB6A),
              Color(0xffFABE17),
            ],
            stops: [0, 1],
          ),
        );
        break;
      case Led.greenLed:
        decoration = BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: const Color(0xff5C743A),
            width: size * 0.08,
          ),
          gradient: const RadialGradient(
            colors: [
              Color(0xffBDEAA7),
              Color(0xff52C153),
            ],
            stops: [0, 1],
          ),
        );
        break;
      default:
    }

    return Container(
      width: size,
      height: size,
      decoration: decoration,
    );
  }
}
