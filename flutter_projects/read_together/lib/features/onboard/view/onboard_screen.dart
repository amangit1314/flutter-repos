import 'package:flutter/material.dart';

import '../../../core/widgets/custom_button.dart';
import '../../home/view/home_screen.dart';

class OnboardScreen extends StatelessWidget {
  const OnboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Image.network(
            'https://example.com/background_image.jpg',
            fit: BoxFit.cover,
          ),
        ),
        Positioned.fill(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.transparent,
                  Colors.black.withOpacity(0.8),
                ],
              ),
            ),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const FlutterLogo(size: 100),
            const SizedBox(height: 20),
            const Text(
              'Welcome to MyBookApp',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Discover the joy of reading with our vast collection of books!',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 20),
            CustomButton(
              onPressed: () {
               Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()),
                );
              },
              text: 'Get Started',
            ),
          ],
        ),
      ],
    );
  }
}
