import 'package:coffee/modules/Starting_Page/StartingPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(fontFamily: 'Montez'),
        home: const SafeArea(
          child: Scaffold(
            body: StartingPage(),
          ),
        ));
  }
}
