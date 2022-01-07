import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:pokedex_flutter/components/sound_widget.dart';

import 'ledscreenbutton_widget.dart';

class ScreenWidget extends StatelessWidget {
  final double width;
  final double height;

  const ScreenWidget({Key? key, this.width = 288, this.height = 236})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      // clipper: ScreenClipper(),
      child: Container(
        alignment: Alignment.center,
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: const Color(0xffDAE8EB),
          border: Border.all(
            color: const Color(0xffE51D20),
          ),
          borderRadius: BorderRadius.circular(width * 0.052),
        ),
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: constraints.maxWidth * 0.81,
                  height: constraints.maxHeight * 0.69,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(width * 0.042),
                      color: const Color(0xff1E1E1E)),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    LedScreenButton(),
                    SoundWidget(),
                  ],
                )
              ],
            );
          },
        ),
      ),
    );
  }
}

class ScreenClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.lineTo(size.width, size.height * 5);

    path.lineTo(size.width, 0);
    path.lineTo(0, size.height);
    path.lineTo(0, size.height);
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return oldClipper != this;
  }
}
