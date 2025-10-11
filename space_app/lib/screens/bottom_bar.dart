import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../constants.dart';
import 'explore_screen.dart';
import 'home_page.dart';
import 'profile_screen.dart';

class BottomBar extends StatefulWidget {
  static const routeName = 'bottom-bar-screen';
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  late int _currentIndex = 0;
  List page = [
    const MyHomePage(),
    ExploreScreen(),
    const ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          page[_currentIndex],
          Positioned(
            top: MediaQuery.of(context).size.height * 0.90,
            left: 5,
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: SizedBox(
                height: 60,
                width: 350,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Container(
                    margin: const EdgeInsets.all(8),
                    height: 50,
                    child: GNav(
                      onTabChange: (index) {
                        setState(() => _currentIndex = index);
                      },
                      rippleColor:
                          Colors.white, // tab button ripple color when pressed
                      hoverColor: Colors.white, // tab button hover color
                      haptic: true, // haptic feedback
                      tabBorderRadius: 15,
                      tabActiveBorder: Border.all(
                        color: gradientStartColor,
                        width: 1,
                      ), // tab button border
                      tabBorder: Border.all(
                        color: gradientStartColor,
                        width: 1,
                      ), // tab button border
                      curve: Curves.easeIn, // tab animation curves
                      duration: const Duration(
                          milliseconds: 500), // tab animation duration
                      gap: 8, // the tab button gap between icon and text
                      color: Colors.white, // unselected icon color
                      activeColor: Colors.white, // selected icon and text color
                      iconSize: 32, // tab button icon size
                      // selected tab background color
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 5,
                      ), // navigation bar padding
                      tabs: const [
                        GButton(
                          icon: Icons.home_rounded,
                          text: 'Home',
                        ),
                        GButton(
                          icon: Icons.explore_outlined,
                          text: 'Explore',
                        ),
                        GButton(
                          icon: Icons.person_outline,
                          text: 'Search',
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
