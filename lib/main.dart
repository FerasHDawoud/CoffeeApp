import 'package:coffee/modules/Menu/menu.dart';
import 'package:coffee/modules/Starting_Page/StartingPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        home: SafeArea(
      child: Scaffold(
        body: Menu(),
      ),
    ));
  }
}
