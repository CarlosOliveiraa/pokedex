import 'package:flutter/material.dart';

import 'directional_widget.dart';

class DirectionsButton extends StatelessWidget {
  final double size;

  const DirectionsButton({
    Key? key,
    this.size = 100,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: LayoutBuilder(builder: (context, constraints) {
        return Column(
          children: [
            DirectionalWidget(
              direction: Direction.top,
              width: constraints.maxWidth * 0.33,
              height: constraints.maxHeight * 0.33,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DirectionalWidget(
                  direction: Direction.top,
                  width: constraints.maxWidth * 0.33,
                  height: constraints.maxHeight * 0.33,
                ),
                DirectionalWidget(
                  direction: Direction.center,
                  width: constraints.maxWidth * 0.33,
                  height: constraints.maxHeight * 0.33,
                ),
                DirectionalWidget(
                  direction: Direction.right,
                  width: constraints.maxWidth * 0.33,
                  height: constraints.maxHeight * 0.33,
                ),
              ],
            ),
            DirectionalWidget(
              direction: Direction.down,
              width: constraints.maxWidth * 0.33,
              height: constraints.maxHeight * 0.33,
            )
          ],
        );
      }),
    );
  }
}
