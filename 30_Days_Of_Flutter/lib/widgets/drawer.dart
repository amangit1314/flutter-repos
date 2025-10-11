import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("Aman Soni"),
            accountEmail: Text("amansoni53453@gmail.com"),
            currentAccountPicture: Image.asset("assets/images/aman.png"),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Your Account"),
          ),
          ListTile(
            leading: Icon(Icons.save),
            title: Text("Saved"),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Settings"),
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text("Logout"),
          ),
        ],
      ),
    );
  }
}
