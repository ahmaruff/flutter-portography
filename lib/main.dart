import 'package:flutter/material.dart';
import 'package:porto_graphy/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Ma'ruf Photography",
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        fontFamily: 'Sora',
      ),
      home: HomePage(),
    );
  }
}
