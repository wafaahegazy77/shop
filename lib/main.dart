import 'package:flutter/material.dart';
import 'package:shopapp/screen/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple shop',
      theme: ThemeData(
        primaryColor: Color(0xff212529),
        accentColor: Color(0xff343a40),
      ),
      home: HomeScreen(),
    );
  }
}
