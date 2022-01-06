import 'package:flutter/material.dart';
import 'package:pokedex_flutter/components/background_widget.dart';
import 'package:pokedex_flutter/components/framelamp_widget.dart';

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
          alignment: Alignment.center,
          children: const [
            FrameLamp(
              size: 200,
            )
          ],
        ),
      ),
    );
  }
}
