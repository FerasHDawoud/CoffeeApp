import 'package:coffee/modules/Order_Summary/Order_Summary_Modules/cart.dart';
import 'package:coffee/modules/starting_page/starting_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext ontext) => Cart(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SafeArea(
          child: Scaffold(
            body: StartingPage(),
          ),
        ),
      ),
    );
  }
}
