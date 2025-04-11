import 'package:flutter/material.dart';

class PageOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profile")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage('https://i.pravatar.cc/150?img=3'),
            ),
            SizedBox(height: 16),
            Text("Galant Anefsyah", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            Text("galantpratama17@gmail.com", style: TextStyle(color: Colors.grey[600])),
            SizedBox(height: 24),
            ListTile(
              leading: Icon(Icons.edit),
              title: Text("Edit Profile"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.history),
              title: Text("Purchase History"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("Logout"),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
