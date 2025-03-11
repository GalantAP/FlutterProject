import 'package:flutter/material.dart';
import 'buttons/raised_button.dart';
import 'buttons/flat_button.dart';
import 'buttons/icon_button.dart';
import 'buttons/floating_action_button.dart';
import 'buttons/cupertino_button.dart';
import 'buttons/custom_gesture.dart';

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
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          const Color.fromARGB(255, 229, 255, 168), // Warna latar belakang
      appBar: AppBar(title: Text('App - Galant')),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Column(
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
                  decoration: InputDecoration(
                    labelText: 'Enter your name',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('Submit'),
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
                    Image.asset('assets/galant.png', width: 200),
                    SizedBox(height: 20),
                    Image.network(
                        'https://www.wahanahonda.com/assets/upload/produk/header/PRODUK_HEADER_25_16-12-2023.webp',
                        width: 200),
                  ],
                ),
              ),
            ],
          ),
          Divider(),
          Text(
            'Flutter Buttons Demo',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          buildNavigationButton(context, 'Raised Button', RaisedButtonDemo()),
          buildNavigationButton(context, 'Flat Button', FlatButtonDemo()),
          buildNavigationButton(context, 'Icon Button', IconButtonDemo()),
          buildNavigationButton(
              context, 'Floating Action Button', FloatingActionButtonDemo()),
          buildNavigationButton(
              context, 'Cupertino Button', CupertinoButtonScreen()),
          buildNavigationButton(
              context, 'Custom Gesture', CustomGestureScreen()),
        ],
      ),
    );
  }

  Widget buildNavigationButton(BuildContext context, String title, Widget screen) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => screen),
          );
        },
        child: Text(title),
      ),
    );
  }
}
