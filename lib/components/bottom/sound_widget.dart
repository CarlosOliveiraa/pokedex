import 'package:flutter/material.dart';

class SoundWidget extends StatelessWidget {
  final double size;

  const SoundWidget({
    Key? key,
    this.size = 23.56,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: size,
      height: size,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(size * 0.12),
        gradient: const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xff7B8287),
            Color(0xff324144),
          ],
        ),
      ),
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Container(
            alignment: Alignment.center,
            width: constraints.maxWidth * 0.84,
            height: constraints.maxHeight * 0.84,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(size * 0.15),
              gradient: const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xff4A494E),
                  Color(0xff525157),
                ],
              ),
            ),
            child: LayoutBuilder(builder: (context, constraints) {
              return Container(
                width: constraints.maxWidth * 0.72,
                height: constraints.maxHeight * 0.72,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xff182022),
                ),
              );
            }),
          );
        },
      ),
    );
  }
}
