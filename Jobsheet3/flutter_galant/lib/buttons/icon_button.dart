import 'package:flutter/material.dart';

class IconButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Icon Button Demo')),
      body: Center(
        child: IconButton(
          icon: Icon(Icons.thumb_up),
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Icon Button Pressed!')),
            );
          },
        ),
      ),
    );
  }
}
