import 'package:flutter/material.dart';

void main() {
  runApp(const LayoutExample());
}

class LayoutExample extends StatelessWidget {
  const LayoutExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Layout Example',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Layout Example')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(color: Colors.blue, width: 50, height: 50),
                  const SizedBox(width: 10),
                  Container(color: Colors.red, width: 50, height: 50),
                ],
              ),
              const SizedBox(height: 20),
              Container(color: Colors.green, width: 100, height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
