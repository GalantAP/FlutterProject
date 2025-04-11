import 'package:flutter/material.dart';

class PageTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Settings")),
      body: ListView(
        children: [
          SwitchListTile(
            title: Text("Dark Mode"),
            value: false,
            onChanged: (val) {
              // Tambahkan logika ubah tema jika diperlukan
            },
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text("Notification Settings"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.lock),
            title: Text("Privacy & Security"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.info),
            title: Text("About App"),
            onTap: () {
              showAboutDialog(
                context: context,
                applicationName: "Game Store",
                applicationVersion: "1.0.0",
                applicationLegalese: "© 2025 Game Store Inc.",
              );
            },
          ),
        ],
      ),
    );
  }
}
