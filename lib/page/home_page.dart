import 'package:flutter/material.dart';

import '../components/background_widget.dart';
import '../components/bigbutton_widget.dart';

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
            BigButton(
              size: 150,
            )
          ],
        ),
      ),
    );
  }
}
