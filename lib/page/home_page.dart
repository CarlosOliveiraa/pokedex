import 'package:flutter/material.dart';
import 'package:pokedex_flutter/components/backtopside_widget.dart';
import 'package:pokedex_flutter/components/screen_widget.dart';

import '../components/background_widget.dart';

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
            )
          ],
        ),
      ),
    );
  }
}
