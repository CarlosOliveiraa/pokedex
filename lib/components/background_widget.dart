import 'package:flutter/material.dart';

class BackGroundWidget extends StatelessWidget {
  final double width;
  final double height;
  final Color color;
  final Widget? child;

  const BackGroundWidget({
    Key? key,
    this.width = 375,
    this.height = 667,
    this.color = const Color(0xffE51D20),
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      color: Colors.blue,
      child: child,
    );
  }
}
