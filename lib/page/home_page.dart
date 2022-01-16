import 'package:flutter/material.dart';
import 'package:pokedex_flutter/components/painter/my_painter_widget.dart';

import '../components/bottom/bottonactions_widget.dart';
import '../components/bottom/screen_widget.dart';
import '../components/top/backtopside_widget.dart';
import 'background_widget.dart';
import 'rightbar_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: BackGroundWidget(
        width: size.width,
        height: size.height,
        child: Stack(
          children: [
            BackTopSideWidget(
              width: size.width * 1,
              height: size.height * 0.23,
            ),
            Positioned(
              top: size.height * 0.31,
              left: size.width * 0.1,
              child: ScreenWidget(
                width: size.width * 0.71,
                height: size.height * 0.35,
              ),
            ),
            Positioned(
              top: size.height * 0.35,
              left: size.width * 0.24,
              child: MyPainter(
                width: size.width * 0.44,
                height: size.height * 0.26,
              ),
            ),
            // const Align(
            //   alignment: Alignment.center,
            //   child: GreenButton(),
            // ),
            Positioned(
              top: size.height * 0.1,
              left: size.width * 0.91,
              child: RightBar(
                width: size.width * 0.09,
                height: size.height * 0.91,
              ),
            ),
            // Center(
            //   child: Buttons(
            //     width: size.width * 0.28,
            //     height: size.height * 0.14,
            //   ),
            // ),
            Positioned(
              top: size.height * 0.72,
              left: size.width * 0.07,
              child: BottonActions(
                width: size.width * 0.80,
                height: size.height * 0.16,
              ),
            ),
            // DirectionsButton(),
            // Align(
            //   alignment: Alignment.bottomCenter,
            //   child: Column(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     children: [
            //       const DirectionalWidget(
            //         direction: Direction.top,
            //       ),
            //       Align(
            //         alignment: Alignment.center,
            //         child: Row(
            //           mainAxisAlignment: MainAxisAlignment.center,
            //           children: const [
            //             DirectionalWidget(
            //               direction: Direction.top,
            //             ),
            //             DirectionalWidget(
            //               direction: Direction.center,
            //             ),
            //             DirectionalWidget(
            //               direction: Direction.right,
            //             ),
            //           ],
            //         ),
            //       ),
            //       const DirectionalWidget(
            //         direction: Direction.down,
            //       )
            //     ],
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
