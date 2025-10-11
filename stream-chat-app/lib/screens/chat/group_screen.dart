import 'dart:ui';

import 'package:aman_stream_chat_app/screens/account_screen.dart';
import 'package:aman_stream_chat_app/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

class Groups extends StatefulWidget {
  static String id = "home_page";
  const Groups({Key? key}) : super(key: key);

  @override
  _GroupsState createState() => _GroupsState();
}

class _GroupsState extends State<Groups> {
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
      body: GestureDetector(
        child: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.orange),
              padding: const EdgeInsets.all(8),
              child: const Text(
                "He'd have you all unravel at the",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 10),
              ),
              
            ),
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.pink,),
              child: const Text(
                "Heed not the rabble",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 10),
              ),
              
            ),
            Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.blue,),
              padding: const EdgeInsets.all(8),
              child: const Text(
                "Sound of screams but the",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 10),
              ),
              
            ),
            Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.purple,),
              padding: const EdgeInsets.all(8),
              child: const Text(
                "Revolution is coming...",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 10),
              ),
              
            ),
            Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.deepPurple,),
              padding: const EdgeInsets.all(8),
              child: const Text(
                "Revolution, they...",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 10),
              ),
              
            ),
            Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.orange,),
              padding: const EdgeInsets.all(8),
              child: const Text(
                "He'd have you all unravel at the",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 10),
              ),
              
            ),
            Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.blue),
              padding: const EdgeInsets.all(8),
              child: const Text(
                "Heed not the rabble",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 10),
              ),
              
            ),
            Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.blue,),
              padding: const EdgeInsets.all(8),
              child: const Text(
                "Sound of screams but the",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 10),
              ),
              
            ),
            Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.purple,),
              padding: const EdgeInsets.all(8),
              child: const Text(
                "Revolution is coming...",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 10),
              ),
              
            ),
            Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.deepPurple,),
              padding: const EdgeInsets.all(8),
              child: const Text(
                "Revolution, they...",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 10),
              ),
              
            ),
          ],
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
