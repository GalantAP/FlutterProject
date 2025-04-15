import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Theme Demo',
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.teal, // Mengubah warna utama menjadi teal
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.teal, // Mengubah warna AppBar
        ),
        textTheme: const TextTheme(
          bodyLarge: TextStyle(
            fontSize: 18,
            color: Colors.white, // Mengubah warna teks menjadi putih
          ),
        ),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home with Dark Mode'),
      ),
      body: Center(
        child: Text(
          'Ini teks dengan tema gelap',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
    );
  }
}
