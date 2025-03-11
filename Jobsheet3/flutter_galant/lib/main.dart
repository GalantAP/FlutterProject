import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController _controller = TextEditingController();
  String _displayText = "";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 229, 255, 168), // Warna latar belakang
        appBar: AppBar(title: Text('App - Galant')),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Selamat datang di aplikasi saya',
              style: TextStyle(
                fontSize: 20, 
                fontWeight: FontWeight.bold, 
                color: const Color.fromARGB(255, 0, 0, 0),
                shadows: [
                  Shadow(
                    blurRadius: 5.0,
                    color: Colors.black45,
                    offset: Offset(3.0, 3.0),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: TextField(
                controller: _controller,
                decoration: InputDecoration(
                  labelText: 'Enter your name',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _displayText = _controller.text;
                });
              },
              child: Text('Submit'),
            ),
            SizedBox(height: 20),
            Text(
              _displayText,
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: const Color.fromARGB(255, 0, 0, 0)),
            ),
            SizedBox(height: 20),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.star, size: 50, color: Colors.amber),
                  SizedBox(width: 15),
                  Icon(Icons.favorite, size: 50, color: Colors.red),
                  SizedBox(width: 15),
                  Icon(Icons.thumb_up, size: 50, color: Colors.blue),
                  SizedBox(width: 15),
                  Icon(Icons.lightbulb, size: 50, color: Colors.yellow),
                  SizedBox(width: 15),
                  Icon(Icons.music_note, size: 50, color: Colors.purple),
                ],
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: Column(
                children: [
                  Image.asset('assets/galant.png', width: 200), // Gambar dari local drive
                  SizedBox(height: 20),
                  Image.network('https://www.wahanahonda.com/assets/upload/produk/header/PRODUK_HEADER_25_16-12-2023.webp', width: 200), // Gambar dari URL
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
