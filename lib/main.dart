import 'package:flutter/material.dart';
import 'page/ScanPage.dart';

void main() {
  runApp(Application());
}

class Application extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ScanPage(),
    );
  }
}

