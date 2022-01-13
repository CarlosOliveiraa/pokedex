import 'dart:typed_data';

import 'package:flutter/material.dart';

class MyPainter extends StatelessWidget {
  final double width;
  final double height;

  const MyPainter({Key? key, this.width = 160, this.height = 131})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: MyPainter1(),
      child: Container(
        width: width,
        height: height,
      ),
    );
  }
}

class MyPainter1 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var center = size / 2;
    var paint = Paint()
      ..color = const Color(0xff000000)
      ..strokeWidth = 5.0
      ..style = PaintingStyle.stroke;
    var paint2 = Paint()..color = const Color(0xffFCE600);
    var paint3 = Paint()..color = const Color(0xff000000);
    var paint4 = Paint()..color = const Color(0xffFFFFFF);

    //CALDA.
    Path tail = Path()
      ..moveTo(size.width * 0, size.height * 0.18)
      ..lineTo(size.width * 0.4, size.height * 0.45)
      ..lineTo(size.width * 0.4, size.height * 0.85)
      ..lineTo(size.width * 0.24, size.height * 0.75)
      ..lineTo(size.width * 0.26, size.height * 0.60)
      ..lineTo(size.width * 0.12, size.height * 0.55)
      ..lineTo(size.width * 0.006, size.height * 0.18);

    canvas.drawPath(tail, paint);
    canvas.drawPath(tail, paint2);

    //CABEÇA
    Path head = Path()
      ..addOval(Rect.fromLTWH(size.width * 0.28, size.height * 0.34,
          size.width * 0.53, size.height * 0.51));

    canvas.drawPath(head, paint);
    canvas.drawPath(head, paint2);

    //BRAÇO ESQUERDO
    Path leftArm = Path()
      ..addOval(Rect.fromLTWH(size.width * 0.31, size.height * 0.80,
          size.width * 0.22, size.height * 0.16));

    leftArm = leftArm.transform(
        _rotatePath(Offset(size.width * 0.31, size.height * 0.80), _rad(-12)));

    canvas.drawPath(leftArm, paint);
    canvas.drawPath(leftArm, paint2);

    //BRAÇO DIREITO.
    Path rightArm = Path()
      ..addOval(Rect.fromLTWH(size.width * 0.57, size.height * 0.78,
          size.width * 0.24, size.height * 0.12));

    rightArm = rightArm.transform(
        _rotatePath(Offset(size.width * 0.57, size.height * 0.78), _rad(-12)));

    canvas.drawPath(rightArm, paint);
    canvas.drawPath(rightArm, paint2);

    //OLHO ESQUERDO
    Path leftEye1 = Path()
      ..addOval(Rect.fromLTWH(size.width * 0.37, size.height * 0.50,
          size.width * 0.09, size.height * 0.11));
    canvas.drawPath(leftEye1, paint);
    canvas.drawPath(leftEye1, paint3);

    Path leftEye2 = Path()
      ..addOval(Rect.fromLTWH(size.width * 0.40, size.height * 0.51,
          size.width * 0.05, size.height * 0.05));
    canvas.drawPath(leftEye2, paint4);

    //OLHO DIREITO
    Path rightEye1 = Path()
      ..addOval(Rect.fromLTWH(size.width * 0.64, size.height * 0.50,
          size.width * 0.09, size.height * 0.11));
    canvas.drawPath(rightEye1, paint);
    canvas.drawPath(rightEye1, paint3);

    Path rightEye2 = Path()
      ..addOval(Rect.fromLTWH(size.width * 0.65, size.height * 0.52,
          size.width * 0.05, size.height * 0.05));
    canvas.drawPath(rightEye2, paint4);

    //NARIZ
    Path nose = Path()
      ..addOval(Rect.fromLTWH(size.width * 0.54, size.height * 0.62,
          size.width * 0.021, size.height * 0.014));
    canvas.drawPath(nose, paint3);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return this != oldDelegate;
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
}
