import 'package:flutter/cupertino.dart';

class BackTopSideWidget extends StatelessWidget {
  final double width;
  final double height;

  const BackTopSideWidget({
    Key? key,
    this.width = 375,
    this.height = 156,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: MyClipper1(),
      child: Container(
        width: width,
        height: height,
        color: const Color(0xffA51A17),
      ),
    );
  }
}

class MyClipper1 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path()
      ..lineTo(size.width, size.height)
      ..addRRect(RRect.fromLTRBR(0, 0, 60, 60, const Radius.circular(10)));

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
