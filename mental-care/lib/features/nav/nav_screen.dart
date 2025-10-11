import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mental_care/features/home/presentation/home_screen.dart';
import 'package:mental_care/features/notifications/presentation/notifications_screen.dart';
import 'package:mental_care/features/profile/presentation/profile_screen.dart';
import 'package:mental_care/features/saved/presentation/saved_items_screen.dart';
import 'package:mental_care/features/search/presentation/search_screen.dart';

class NavScreen extends StatefulWidget {
  const NavScreen({super.key});

  @override
  State<NavScreen> createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  int _currentIndex = 0;

  void onTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [
      const HomeScreen(),
      const SearchScreen(),
      const SavedItemsScreen(),
      const NotificationsScreen(),
      const ProfileScreen(),
    ];

    return Scaffold(
      extendBody: true,
      body: pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        elevation: 0,
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black.withOpacity(0.3),
        items: const [
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.house, size: 20),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.facebookMessenger, size: 20),
            label: 'Chats',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.floppyDisk, size: 20),
            label: 'Saved',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.bell, size: 20),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.person, size: 20),
            label: 'Profile',
          ),
        ],
        onTap: onTap,
      ),
    );
  }
}
