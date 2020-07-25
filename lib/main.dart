import 'package:flutter/material.dart';
import 'package:todo/pages/HomePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My todo list',
      theme: ThemeData.dark(),
      home: HomePage(),
    );
  }
}
