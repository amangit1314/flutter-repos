import 'package:flutter/material.dart';

import 'home_menu.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(vertical: 20),
      children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 12.0),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                    icon: const Icon(Icons.menu),
                  ),
                  const Spacer(),
                  const Text(
                    "Home",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 115,
              width: 115,
              child: Stack(
                clipBehavior: Clip.none,
                fit: StackFit.expand,
                children: [
                  CircleAvatar(
                    //backgroundImage: AssetImage(content[0][1]),
                    backgroundImage: AssetImage("assets/design.png"),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Column(
              children: [
                const SizedBox(height: 20),
                HomeMenu(
                  text: "Transparent Bottom Nav",
                  icon: Icons.shield_moon,
                  press: () => {},
                ),
                HomeMenu(
                  text: "",
                  icon: Icons.person,
                  press: () => {},
                ),
                HomeMenu(
                  text: "",
                  icon: Icons.shop,
                  press: () => {},
                ),
                HomeMenu(
                  text: "",
                  icon: Icons.notifications,
                  press: () {},
                ),
                HomeMenu(
                  text: "",
                  icon: Icons.settings,
                  press: () {},
                ),
                HomeMenu(
                  text: "",
                  icon: Icons.help,
                  press: () {},
                ),
                HomeMenu(
                  text: "",
                  icon: Icons.logout,
                  press: () {},
                ),
                const SizedBox(height: 100),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
