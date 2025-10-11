import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ProfileScreen extends StatelessWidget {
  static const routeName = 'profile-screen';

  const ProfileScreen({super.key});
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
                  'https://assets10.lottiefiles.com/packages/lf20_ZQhQzO.json',
                  repeat: true),
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
                textAlign: TextAlign.center,
                'Create account to\n  Save your data',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w600)),
          ],
        ),
      ),
    );
  }
}
