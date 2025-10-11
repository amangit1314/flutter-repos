import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ExploreScreen extends StatelessWidget {
  static const routeName = 'explore-screen';

  const ExploreScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.black,
        child: Column(
          children: [
            Container(
              child: Lottie.network(
                'https://assets7.lottiefiles.com/packages/lf20_RYmOmk.json',
                repeat: true,
              ),
            ),
            const SizedBox(height: 100),
            const Text(
              'Explore the\nSpace',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 36,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
