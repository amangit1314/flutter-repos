import 'package:aman_stream_chat_app/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

import 'chat/group_screen.dart';

class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  _onTap() {
    // this has changed
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (BuildContext context) => _children[_currentIndex],
      ),
    ); // this has changed
  }

  final List<Widget> _children = [HomeScreen(), Groups(), Account()];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      body: Center(
        child: Text(
          "Account",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white),
        ),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
        child: BottomNavigationBar(
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              // ignore: deprecated_member_use
              title: Text('Chat'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.group_rounded),
              // ignore: deprecated_member_use
              title: Text('Groups'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              // ignore: deprecated_member_use
              title: Text('Account'),
            )
          ],
          onTap: (index) {
            // this has changed
            setState(() {
              _currentIndex = index;
            });
            _onTap();
          },
        ),
      ),
    );
  }
}
