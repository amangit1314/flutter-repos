import 'package:flutter/material.dart';

import 'features/onboard/view/onboard_screen.dart';

class BookApp extends StatelessWidget {
  const BookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Book App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const OnboardScreen(),
    );
  }
}