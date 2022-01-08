import 'package:flutter/material.dart';

enum Options { startButton, selectButton }

class OptionButton extends StatelessWidget {
  final double width;
  final double height;
  final Options options;

  const OptionButton({
    Key? key,
    this.width = 37,
    this.height = 8,
    this.options = Options.startButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    late Decoration decoration;

    switch (options) {
      case Options.startButton:
        decoration = BoxDecoration(
          border: Border.all(
            color: const Color(0xff3B557B),
            width: width * 0.02,
          ),
          borderRadius: BorderRadius.circular(width * 0.05),
          color: const Color(0xff0F6594),
        );
        break;
      case Options.selectButton:
        decoration = BoxDecoration(
          border: Border.all(
            color: const Color(0xffBC1F21),
            width: width * 0.02,
          ),
          borderRadius: BorderRadius.circular(width * 0.05),
          color: const Color(0xffA51A17),
        );
        break;
      default:
    }

    return Container(
      width: width,
      height: height,
      decoration: decoration,
    );
  }
}
