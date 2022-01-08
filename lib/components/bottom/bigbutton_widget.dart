import 'package:flutter/material.dart';

class BigButton extends StatelessWidget {
  final double size;

  const BigButton({
    Key? key,
    this.size = 58,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: size,
      height: size,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(width: size * 0.01),
          gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xff686D70),
              Color(0xff050F11),
            ],
          )),
      child: LayoutBuilder(builder: (context, constraints) {
        return Container(
          alignment: Alignment.center,
          width: constraints.maxWidth * 0.81,
          height: constraints.maxHeight * 0.81,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color(0xff050F11),
                Color(0xff686D70),
              ],
            ),
          ),
          child: LayoutBuilder(builder: (context, constraints) {
            return Container(
              width: constraints.maxWidth * 0.91,
              height: constraints.maxHeight * 0.91,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(width: size * 0.01),
                gradient: const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xff676A6F),
                    Color(0xff242625),
                  ],
                ),
              ),
            );
          }),
        );
      }),
    );
  }
}
