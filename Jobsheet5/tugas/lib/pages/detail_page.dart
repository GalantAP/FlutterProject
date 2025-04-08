import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final String data;

  const DetailPage({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Detail')),
      body: Center(child: Text(data, style: const TextStyle(fontSize: 20))),
    );
  }
}