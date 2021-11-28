import 'package:flutter/material.dart';
import 'package:flutter_app/massager_screen.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context)
  {
    // ignore: prefer_const_constructors
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // ignore: prefer_const_constructors
      home: MassagerScreen(),
    );
  }
}

