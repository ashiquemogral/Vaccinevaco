import 'package:flutter/material.dart';
import 'package:flutter_aarogya_setu/screens/block_screen.dart';
import 'package:flutter_aarogya_setu/screens/dist_screen.dart';
import 'package:flutter_aarogya_setu/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}
