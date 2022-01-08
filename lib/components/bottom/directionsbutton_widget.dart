import 'package:flutter/material.dart';
import 'package:pokedex_flutter/components/bottom/circle_widget.dart';

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
              child: Icon(
                Icons.arrow_drop_up,
                size: constraints.maxWidth * 0.28,
                color: const Color(0xff182022),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DirectionalWidget(
                  direction: Direction.left,
                  width: constraints.maxWidth * 0.33,
                  height: constraints.maxHeight * 0.33,
                  child: Icon(
                    Icons.arrow_left,
                    size: constraints.maxWidth * 0.28,
                    color: const Color(0xff182022),
                  ),
                ),
                DirectionalWidget(
                  direction: Direction.center,
                  width: constraints.maxWidth * 0.33,
                  height: constraints.maxHeight * 0.33,
                  child: Center(
                    child: CircleWidget(
                      size: constraints.maxWidth * 0.11,
                    ),
                  ),
                ),
                DirectionalWidget(
                  direction: Direction.right,
                  width: constraints.maxWidth * 0.33,
                  height: constraints.maxHeight * 0.33,
                  child: Icon(
                    Icons.arrow_right,
                    size: constraints.maxWidth * 0.28,
                    color: const Color(0xff182022),
                  ),
                ),
              ],
            ),
            DirectionalWidget(
              direction: Direction.down,
              width: constraints.maxWidth * 0.33,
              height: constraints.maxHeight * 0.33,
              child: Icon(
                Icons.arrow_drop_down,
                size: constraints.maxWidth * 0.26,
                color: const Color(0xff182022), 
              ),
            )
          ],
        );
      }),
    );
  }
}
