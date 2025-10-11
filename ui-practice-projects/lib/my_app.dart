import 'package:flutter/material.dart';

import 'my_home.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Counter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Counter Page'),
      debugShowCheckedModeBanner: false,
    );
  }
}
