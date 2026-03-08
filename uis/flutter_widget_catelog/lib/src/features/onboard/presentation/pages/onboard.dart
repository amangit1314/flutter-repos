import 'package:flutter/material.dart';
import 'package:flutter_widget_catelog/src/features/auth/presentation/pages/login/login_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class Onboard extends StatelessWidget {
  const Onboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    final List<Widget> pages = [
      OnboardPage(
        height: height,
        image: 'assets/6428539.jpg',
        color: const Color(0xff22211f),
        descriptionText: 'This is an app to show collection of demo of so many widgets in flutter ',
        headingText: 'Widget Catelog',
      ),
      OnboardPage(
        image: 'assets/metaverse.webp',
        color: Colors.deepPurple,
        height: height,
        headingText: 'Flutter Widgets',
        descriptionText: 'I have added some widgets of flutter to showcase User interface ',
      ),
      OnboardPage(
        image: 'assets/design.png',
        color: Colors.grey.shade800,
        height: height,
        headingText: 'Flutter Widgets',
        descriptionText: 'I have added some widgets of flutter to showcase User interface ',
      ),
    ];

    return Scaffold(
      backgroundColor: const Color(0xff22211f),
      body: LiquidSwipe(
        pages: pages,
        slideIconWidget: const CircleAvatar(
          radius: 35,
          backgroundColor: Colors.black,
          child: Icon(
            Icons.arrow_back_ios_new_outlined,
            size: 30,
          ),
        ),
        positionSlideIcon: .5,
      ),
    );
  }
}

class OnboardPage extends StatelessWidget {
  const OnboardPage({
    super.key,
    required this.height,
    required this.descriptionText,
    required this.color,
    required this.headingText,
    required this.image,
  });
  final Color color;
  final double height;
  final String descriptionText;
  final String headingText;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            height: height * .74,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: height * .06),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  headingText,
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  textAlign: TextAlign.start,
                ),
                SizedBox(height: height * .04),
                Text(
                  descriptionText,
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: Colors.white,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  textAlign: TextAlign.start,
                ),
              ],
            ),
          ),
          SizedBox(height: height * .04),
          MaterialButton(
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 40),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xffffffff),
              ),
              child: Center(
                child: Text(
                  "Get Started",
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ),
              ),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const LoginScreen(),
                ),
              );
            },
          ),
          SizedBox(height: height * .02),
        ],
      ),
    );
  }
}
