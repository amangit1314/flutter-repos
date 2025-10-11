import 'package:aman_stream_chat_app/screens/account_screen.dart';
import 'package:aman_stream_chat_app/screens/chat/group_screen.dart';
import 'package:aman_stream_chat_app/screens/home/common/home_buildColumn.dart';
import 'package:aman_stream_chat_app/screens/home/common/home_buildRow.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomeScreen extends StatefulWidget {
  static String id = "home_page";

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
      backgroundColor: Colors.white,
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 768) {
            return Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: SafeArea(
                  child: ListView(
                    children: <Widget>[buildColumn(context)],
                  ),
                ),
              ),
            );
          } else {
            return Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: SafeArea(
                  child: ListView(children: <Widget>[buildRow(context)]),
                ),
              ),
            );
          }
        },
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
        child: BottomNavigationBar(
          //backgroundColor: Colors.deepPurpleAccent,
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(MdiIcons.phoneMessage),
              label: 'Chat',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.group_rounded),
              label: 'Groups',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
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
