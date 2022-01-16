import 'package:flutter/material.dart';
import 'package:pokedex_flutter/components/painter/eeve_painter.dart';
import 'package:pokedex_flutter/components/painter/my_painter_widget.dart';

class NovaPage extends StatefulWidget {
  const NovaPage({Key? key}) : super(key: key);

  @override
  _NovaPageState createState() => _NovaPageState();
}

class _NovaPageState extends State<NovaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: const MyPainter(
            width: 306,
            height: 307,
          ),
        ),
      ),
    );
  }
}
