import 'package:flutter/material.dart';

enum Direction { left, right, top, down, center }

class DirectionalWidget extends StatelessWidget {
  final double width;
  final double height;
  final Direction direction;
  final Widget? child;

  const DirectionalWidget({
    Key? key,
    this.width = 34,
    this.height = 33,
    this.direction = Direction.center, this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    late Decoration decoration;

    switch (direction) {
      case Direction.top:
        decoration = const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomRight,
                end: Alignment.topLeft,
                colors: [
              Color(0xff363D40),
              Color(0xff53595C),
            ]));
        break;
      case Direction.left:
        decoration = const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomRight,
                end: Alignment.topLeft,
                colors: [
              Color(0xff363D40),
              Color(0xff535A5C),
            ]));
        break;
      case Direction.down:
        decoration = const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomRight,
                end: Alignment.topLeft,
                colors: [
              Color(0xff182022),
              Color(0xff353D3F),
            ]));
        break;
      case Direction.right:
        decoration = const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomRight,
                end: Alignment.topLeft,
                colors: [
              Color(0xff172022),
              Color(0xff353c3F),
            ]));
        break;
      case Direction.center:
        decoration = const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomRight,
                end: Alignment.topLeft,
                colors: [
              Color(0xff272F31),
              Color(0xff444B4E),
            ]));
        break;
      default:
    }

    return Container(
      width: width,
      height: height,
      decoration: decoration,
      child: child,
    );
  }
}
