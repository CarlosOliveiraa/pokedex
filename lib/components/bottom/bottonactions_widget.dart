import 'package:flutter/material.dart';
import 'package:pokedex_flutter/components/bottom/bigbutton_widget.dart';
import 'package:pokedex_flutter/components/bottom/buttons_widget.dart';

import 'directionsbutton_widget.dart';

class BottonActions extends StatelessWidget {
  final double width;
  final double height;

  const BottonActions({
    Key? key,
    this.width = 301,
    this.height = 107,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Align(
                alignment: Alignment.topLeft * 0.7,
                child: BigButton(
                  size: constraints.maxWidth * 0.19,
                ),
              ),
              Buttons(
                width: constraints.maxWidth * 0.35,
                height: constraints.minHeight * 0.91,
              ),
              DirectionsButton(
                size: constraints.maxWidth * 0.31,
              ),
            ],
          );
        },
      ),
    );
  }
}
