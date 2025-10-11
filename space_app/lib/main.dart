import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:space_app/screens/bottom_bar.dart';
import 'package:space_app/screens/explore_screen.dart';
import 'package:space_app/screens/profile_screen.dart';

import 'screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Space App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const BottomBar(),
      routes: {
        ExploreScreen.routeName: (ctx) => ExploreScreen(),
        ProfileScreen.routeName: (ctx) => const ProfileScreen(),
        BottomBar.routeName: (ctx) => const BottomBar(),
        MyHomePage.routeName: (ctx) => const MyHomePage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
