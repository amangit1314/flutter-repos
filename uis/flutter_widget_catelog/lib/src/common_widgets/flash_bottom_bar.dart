// import 'package:flutter/material.dart';
// import 'package:flutter_widget_catelog/controllers/home/home_controller.dart';
// import 'package:get/get.dart';
// import 'package:iconly/iconly.dart';
// import 'package:zoom_tap_animation/zoom_tap_animation.dart';

// class FlashBottomBar extends StatelessWidget {
//   FlashBottomBar({Key? key}) : super(key: key);
//   final HomeController _pageController = Get.find();
//   @override
//   Widget build(BuildContext context) {
//     return BottomAppBar(
//       elevation: 0,
//       notchMargin: 10,
//       child: Container(
//           padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
//           child: Obx(
//             () => Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 _bottomAppBarItem(icon: IconlyLight.home, page: 0),
//                 _bottomAppBarItem(icon: IconlyLight.bookmark, page: 1),
//                 _bottomAppBarItem(icon: IconlyLight.buy, page: 2),
//                 _bottomAppBarItem(icon: IconlyLight.profile, page: 3),
//               ],
//             ),
//           )),
//     );
//   }

//   Widget _bottomAppBarItem({icon, page}) {
//     return ZoomTapAnimation(
//       onTap: () => _pageController.goToTab(page),
//       child: Icon(
//         icon,
//         color: _pageController.currentPage == page ? Colors.blue : Colors.grey,
//         size: 22,
//       ),
//     );
//   }
// }
