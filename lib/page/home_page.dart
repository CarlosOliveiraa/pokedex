import 'package:flutter/material.dart';
import 'package:pokedex_flutter/components/bottom/directional_widget.dart';
import 'package:pokedex_flutter/components/bottom/greenbutton_widget.dart';
import 'package:pokedex_flutter/components/bottom/screen_widget.dart';
import 'package:pokedex_flutter/components/top/backtopside_widget.dart';

import 'package:pokedex_flutter/components/rightbar_widget.dart';

import 'background_widget.dart';

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
            const Align(
              alignment: Alignment.center,
              child: ScreenWidget(),
            ),
            const Align(
              alignment: Alignment.center,
              child: GreenButton(),
            ),
            const Align(
              alignment: Alignment.bottomRight,
              child: RightBar(),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const DirectionalWidget(
                    direction: Direction.top,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        DirectionalWidget(
                          direction: Direction.top,
                        ),
                        DirectionalWidget(
                          direction: Direction.center,
                        ),
                        DirectionalWidget(
                          direction: Direction.right,
                        ),
                      ],
                    ),
                  ),
                  const DirectionalWidget(
                    direction: Direction.down,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
