import 'package:flutter/material.dart';
import 'package:iot/screen/authen.dart';

void main() {
  runApp(Myapps());
}

class Myapps extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Authen(),
    );
  }
}
