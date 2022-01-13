import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'page/home_page.dart';
import 'page/novapage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        //statusBar
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
        //navigationBar color
        systemNavigationBarColor: Color(0xff272B2E), //bottom bar color
        systemNavigationBarIconBrightness: Brightness.light, //bottom bar icons
      ),
    );
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return const MaterialApp(
      title: 'Flutter Demo',
      home: HomePage(),
    );
  }
}
