import 'package:flutter/material.dart';

class TabNavigation extends StatelessWidget {
  const TabNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Tab Navigation'),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home), text: 'Home'),
              Tab(icon: Icon(Icons.settings), text: 'Settings'),
              Tab(icon: Icon(Icons.person), text: 'Profile'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(child: Text('Home Tab', style: TextStyle(fontSize: 18))),
            Center(child: Text('Settings Tab', style: TextStyle(fontSize: 18))),
            Center(child: Text('Profile Tab', style: TextStyle(fontSize: 18))),
          ],
        ),
      ),
    );
  }
}
