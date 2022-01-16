import 'dart:typed_data';

import 'package:flutter/material.dart';

class EevePainter extends StatelessWidget {
  final double width;
  final double height;

  const EevePainter({Key? key, this.width = 206, this.height = 207})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: EevePaint(),
      child: SizedBox(
        width: width,
        height: height,
      ),
    );
  }
}

class EevePaint extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var edgePaint = Paint()
      ..color = const Color(0xff000000)
      ..strokeWidth = 2.0
      ..style = PaintingStyle.stroke;

    var bodyColor = Paint()..color = const Color(0xffCFA156);

    var bodyShadow = Paint()..color = const Color(0xffB18857);

    var whiteColor = Paint()..color = const Color(0xffE6E7BF);
    var whiteShadow = Paint()..color = const Color(0xffCEB28B);

    var earColor = Paint()..color = const Color(0xff7A403F);
    var earShadow = Paint()..color = const Color(0xff211111);

    var whiteEye = Paint()..color = const Color(0xffF0F0EF);

    //CABEÇA
    Path head = Path()
      ..moveTo(size.width * 0.27, size.height * 0.30)
      ..quadraticBezierTo(size.width * 0.25, size.height * 0.35,
          size.width * 0.25, size.height * 0.42)
      ..quadraticBezierTo(size.width * 0.20, size.height * 0.58,
          size.width * 0.42, size.height * 0.62)
      ..quadraticBezierTo(size.width * 0.64, size.height * 0.61,
          size.width * 0.64, size.height * 0.35)
      ..lineTo(size.width * 0.63, size.height * 0.35)
      ..quadraticBezierTo(size.width * 0.86, size.height * 0.30,
          size.width * 0.92, size.height * 0.03)
      ..quadraticBezierTo(size.width * 0.68, size.height * 0.10,
          size.width * 0.59, size.height * 0.27)
      ..lineTo(size.width * 0.60, size.height * 0.26)
      ..quadraticBezierTo(size.width * 0.53, size.height * 0.21,
          size.width * 0.51, size.height * 0.18)
      ..lineTo(size.width * 0.51, size.height * 0.21)
      ..lineTo(size.width * 0.43, size.height * 0.14)
      ..lineTo(size.width * 0.44, size.height * 0.20)
      ..lineTo(size.width * 0.40, size.height * 0.16)
      ..lineTo(size.width * 0.40, size.height * 0.20)
      ..lineTo(size.width * 0.35, size.height * 0.17)
      ..lineTo(size.width * 0.37, size.height * 0.22)
      ..lineTo(size.width * 0.31, size.height * 0.18)
      ..lineTo(size.width * 0.33, size.height * 0.24)
      ..lineTo(size.width * 0.31, size.height * 0.22)
      ..lineTo(size.width * 0.32, size.height * 0.25)
      ..quadraticBezierTo(size.width * 0.31, size.height * 0.25,
          size.width * 0.29, size.height * 0.276)
      ..moveTo(size.width * 0.31, size.height * 0.25)
      ..quadraticBezierTo(size.width * 0.21, size.height * 0.10,
          size.width * 0.009, size.height * 0.024)
      ..quadraticBezierTo(size.width * 0.05, size.height * 0.06,
          size.width * 0.07, size.height * 0.13)
      ..quadraticBezierTo(size.width * 0.09, size.height * 0.23,
          size.width * 0.26, size.height * 0.32);

    canvas.drawPath(head, edgePaint);
    canvas.drawPath(head, bodyColor);

    Path earLeft = Path()
      ..moveTo(size.width * 0.05, size.height * 0.06)
      ..quadraticBezierTo(size.width * 0.065, size.height * 0.07,
          size.width * 0.077, size.height * 0.11)
      ..quadraticBezierTo(size.width * 0.10, size.height * 0.19,
          size.width * 0.15, size.height * 0.225)
      ..quadraticBezierTo(size.width * 0.21, size.height * 0.27,
          size.width * 0.25, size.height * 0.29)
      ..lineTo(size.width * 0.25, size.height * 0.26)
      ..lineTo(size.width * 0.28, size.height * 0.26)
      ..quadraticBezierTo(size.width * 0.17, size.height * 0.10,
          size.width * 0.05, size.height * 0.06);

    canvas.drawPath(earLeft, earShadow);

    Path earLeftShadow = Path()
      ..moveTo(size.width * 0.08, size.height * 0.08)
      ..quadraticBezierTo(size.width * 0.11, size.height * 0.20,
          size.width * 0.18, size.height * 0.20)
      ..quadraticBezierTo(size.width * 0.16, size.height * 0.11,
          size.width * 0.05, size.height * 0.07);

    canvas.drawPath(earLeftShadow, earColor);

    Path earRightShadow = Path()
      ..moveTo(size.width * 0.62, size.height * 0.29)
      ..quadraticBezierTo(size.width * 0.67, size.height * 0.16,
          size.width * 0.89, size.height * 0.063)
      ..quadraticBezierTo(size.width * 0.80, size.height * 0.28,
          size.width * 0.65, size.width * 0.32)
      ..lineTo(size.width * 0.65, size.height * 0.29);

    canvas.drawPath(earRightShadow, earShadow);

    Path earRight = Path()
      ..moveTo(size.width * 0.78, size.height * 0.18)
      ..quadraticBezierTo(size.width * 0.75, size.width * 0.14,
          size.width * 0.865, size.height * 0.09)
      ..quadraticBezierTo(size.width * 0.82, size.width * 0.19,
          size.width * 0.78, size.height * 0.18);
    canvas.drawPath(earRight, earColor);

    Path leftEye = Path()
      ..addOval(Rect.fromLTWH(size.width * 0.28, size.height * 0.35,
          size.width * 0.08, size.height * 0.14));

    leftEye = leftEye.transform(
        _rotatePath(Offset(size.width * 0.28, size.height * 0.35), _rad(03)));
    canvas.drawPath(leftEye, earShadow);

    Path leftEyeWhite = Path()
      ..addOval(Rect.fromLTWH(size.width * 0.31, size.height * 0.38,
          size.width * 0.03, size.height * 0.04));

    leftEyeWhite = leftEyeWhite.transform(
        _rotatePath(Offset(size.width * 0.28, size.height * 0.35), _rad(03)));
    canvas.drawPath(leftEye, earShadow);

    canvas.drawPath(leftEyeWhite, whiteEye);

    Path rightEye = Path()
      ..addOval(Rect.fromLTWH(size.width * 0.49, size.height * 0.36,
          size.width * 0.08, size.height * 0.14));

    rightEye = rightEye.transform(
        _rotatePath(Offset(size.width * 0.28, size.height * 0.35), _rad(03)));
    canvas.drawPath(rightEye, earShadow);

    Path rightEyeWhite = Path()
      ..addOval(Rect.fromLTWH(size.width * 0.51, size.height * 0.41,
          size.width * 0.03, size.height * 0.04));

    leftEyeWhite = leftEyeWhite.transform(
        _rotatePath(Offset(size.width * 0.28, size.height * 0.35), _rad(03)));
    canvas.drawPath(rightEyeWhite, earShadow);

    canvas.drawPath(rightEyeWhite, whiteEye);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return oldDelegate != this;
  }
}

//CONVERTE GRAUS EM RADIANOS
double _rad(double degrees) {
  return degrees * (3.14 / 100);
}

//ROTAÇÃO.
Float64List _rotatePath(Offset origin, double radians) {
  Matrix4 matrix = Matrix4.identity();

  var m = matrix
    ..clone()
    ..translate(origin.dx, origin.dy)
    ..multiply(Matrix4.rotationZ(radians))
    ..translate(-origin.dx, -origin.dy);

  return m.storage;
}
