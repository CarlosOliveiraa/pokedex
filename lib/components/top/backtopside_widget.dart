import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pokedex_flutter/components/top/framelamp_widget.dart';
import 'package:pokedex_flutter/components/top/led_widget.dart';

class BackTopSideWidget extends StatelessWidget {
  final double width;
  final double height;
  final Color backColor;
  final Color frontColor;

  const BackTopSideWidget({
    Key? key,
    this.width = 375,
    this.height = 156,
    this.backColor = const Color(0xffA51A17),
    this.frontColor = const Color(0xffCC1416),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: MyClipper1(),
      child: Container(
        alignment: Alignment.topCenter,
        width: width,
        height: height,
        color: backColor,
        child: LayoutBuilder(builder: (context, constraints) {
          return ClipPath(
            clipper: MyClipper2(),
            child: Container(
              width: constraints.maxWidth,
              height: constraints.maxHeight * 0.91,
              color: frontColor,
              child: Stack(
                children: [
                  Positioned(
                    top: height * 0.17,
                    left: width * 0.07,
                    bottom: height * 0.22,
                    child: FrameLamp(
                      size: constraints.maxWidth * 0.23,
                    ),
                  ),
                  Positioned(
                    top: height * 0.17,
                    left: width * 0.35,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        LedWidget(
                          led: Led.redLed,
                          size: width * 0.03,
                        ),
                        SizedBox(width: width * 0.03),
                        LedWidget(
                          led: Led.yellowled,
                          size: width * 0.03,
                        ),
                        SizedBox(width: width * 0.03),
                        LedWidget(
                          led: Led.greenLed,
                          size: width * 0.03,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}

class MyClipper1 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path()
      ..lineTo(0, size.height)
      ..lineTo(size.width * 0.43, size.height)
      ..lineTo(size.width * 0.60, size.height / 2)
      ..lineTo(size.width * 0.91, size.height / 2)
      ..lineTo(size.width * 0.91, size.height)
      ..lineTo(size.width, size.height)
      ..lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

class MyClipper2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path()
      ..lineTo(0, size.height * 0.8)
      ..quadraticBezierTo(size.width * 0.005, size.height * 0.9, size.width * 0,
          size.height * 0.92)
      ..lineTo(size.width * 0.41, size.height * 0.92)
      ..lineTo(size.width * 0.55, size.height * 0.50) //54 50
      ..quadraticBezierTo(size.width * 0.57, size.height * 0.41,
          size.width * 0.61, size.height * 0.40)
      ..lineTo(size.width * 0.93, size.height * 0.40)
      ..lineTo(size.width * 0.91, size.height * 0.50)
      ..lineTo(size.width * 0.91, size.height)
      ..lineTo(size.width, size.height)
      ..lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return oldClipper != this;
  }
}
