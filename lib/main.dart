import 'package:flutter/material.dart';
import 'package:spotify_ui_clone/screens/home/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Proxima Nova'),
      home: HomeScreen(),
    );
  }
}
