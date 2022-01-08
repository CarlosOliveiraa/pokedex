import 'package:flutter/material.dart';
import 'package:pokedex_flutter/components/bottom/greenbutton_widget.dart';
import 'package:pokedex_flutter/components/bottom/optionbutton_widget.dart';

class Buttons extends StatelessWidget {
  final double width;
  final double height;

  const Buttons({
    Key? key,
    this.width = 107,
    this.height = 98,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: LayoutBuilder(builder: (context, constraints) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                OptionButton(
                  options: Options.selectButton,
                  width: constraints.maxWidth * 0.34,
                  height: constraints.maxHeight * 0.08,
                ),
                OptionButton(
                  options: Options.startButton,
                  width: constraints.maxWidth * 0.34,
                  height: constraints.maxHeight * 0.08,
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: GreenButton(
                width: constraints.maxWidth * 0.92,
                height: constraints.maxHeight * 0.55,
              ),
            )
          ],
        );
      }),
    );
  }
}
