import 'package:flutter/material.dart';
//import 'page_one.dart';
// import 'page_two.dart';
import 'tab_navigation.dart';
//import 'home_with_drawer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: const TabNavigation(),
    );
  }
}
