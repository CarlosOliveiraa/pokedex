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
    var paint = Paint()
      ..color = const Color(0xff000000)
      ..strokeWidth = 5.0
      ..style = PaintingStyle.stroke;
    var paint2 = Paint()..color = const Color(0xffFCE600);
    var paint3 = Paint()..color = const Color(0xff000000);
    var paint4 = Paint()..color = const Color(0xffFFFFFF);
    var paintBoca = Paint()
      ..color = const Color(0xff000000)
      ..strokeWidth = 3.0
      ..style = PaintingStyle.stroke;
    var paintCheek = Paint()..color = const Color(0xffF00506);

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

    //ORELHA ESQUERDA

    Path ear1 = Path()
      ..addOval(Rect.fromLTWH(size.width * 0.13, size.height * 0.06,
          size.width * 0.46, size.height * 0.14));
    ear1 = ear1.transform(
        _rotatePath(Offset(size.width * 0.13, size.height * 0.18), _rad(-176)));

    canvas.drawPath(ear1, paint3);
    canvas.drawPath(ear1, paint);

    //ORELHA DIREITA
    Path ear2 = Path()
      ..addOval(Rect.fromLTWH(size.width * 0.30, size.height * 0.7,
          size.width * 0.46, size.height * 0.14));
    ear2 = ear2.transform(
        _rotatePath(Offset(size.width * 0.13, size.height * 0.18), _rad(176)));
    canvas.drawPath(ear2, paint3);
    canvas.drawPath(ear2, paint);

    //CABEÇA
    Path head = Path()
      ..addOval(Rect.fromLTWH(size.width * 0.28, size.height * 0.34,
          size.width * 0.53, size.height * 0.51));

    canvas.drawPath(head, paint);
    canvas.drawPath(head, paint2);

    //ORELHA ESQUERDA PARTE AMARELA
    Path ear1Y = Path()
      ..addOval(Rect.fromLTWH(size.width * 0.26, size.height * 0.01,
          size.width * .34, size.height * 0.53));

    Path ear1D = Path.combine(PathOperation.intersect, ear1Y, ear1);
    canvas.drawPath(ear1D, paint2);

    //ORELHA ESQUERDA PARTE AMARELA
    Path ear2Y = Path()
      ..addOval(Rect.fromLTWH(size.width * 0.51, size.height * 0.01,
          size.width * 0.34, size.height * 0.53));

    Path ear2D = Path.combine(PathOperation.intersect, ear2Y, ear2);
    canvas.drawPath(ear2D, paint2);

    //BOCHECHA ESQUERDA
    Path cheek1 = Path()
      ..addOval(Rect.fromLTWH(size.width * 0.27, size.height * 0.65,
          size.width * 0.12, size.height * 0.17));

    Path diference = Path.combine(PathOperation.intersect, cheek1, head);
    canvas.drawPath(diference, paintCheek);

    //BRAÇO ESQUERDO
    Path leftArm = Path()
      ..addOval(Rect.fromLTWH(size.width * 0.31, size.height * 0.80,
          size.width * 0.22, size.height * 0.16));

    leftArm = leftArm.transform(
        _rotatePath(Offset(size.width * 0.31, size.height * 0.80), _rad(-12)));

    canvas.drawPath(leftArm, paint);
    canvas.drawPath(leftArm, paint2);

    //BOCHECHCA DIREITA
    Path cheek2 = Path()
      ..addOval(Rect.fromLTWH(size.width * 0.7, size.height * 0.64,
          size.width * 0.12, size.height * 0.17));

    Path diference2 = Path.combine(PathOperation.intersect, cheek2, head);
    canvas.drawPath(diference2, paintCheek);

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
      ..addOval(Rect.fromLTWH(size.width * 0.54, size.height * 0.60,
          size.width * 0.021, size.height * 0.014));
    canvas.drawPath(nose, paint3);

    //BOCA
    Path mouth1 = Path()
      ..moveTo(size.width * 0.47, size.height * 0.64)
      ..quadraticBezierTo(size.width * 0.5, size.height * 0.66,
          size.width * 0.55, size.height * 0.64)
      ..quadraticBezierTo(size.width * 0.59, size.height * 0.66,
          size.width * 0.62, size.height * 0.65);

    canvas.drawPath(mouth1, paintBoca);
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
