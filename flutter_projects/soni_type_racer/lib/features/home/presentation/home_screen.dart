import 'package:flutter/material.dart';
import 'package:soni_type_racer/shared/widgets/custom_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 600),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Create/Join a room to play!',
                style: TextStyle(fontSize: 24, color: Colors.black),
              ),
              SizedBox(height: size.height * 0.1),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomButton(
                    content: 'Create',
                    isHome: true,
                    //width: size.width * 0.35,
                    color: Colors.black,
                    textColor: Colors.white,
                    fontSize: 17,
                    onPressed: () =>
                        Navigator.pushNamed(context, '/create-room'),
                  ),
                  CustomButton(
                    content: 'Join',
                    isHome: true,
                    //width: size.width * 0.35,
                    color: Colors.black,
                    textColor: Colors.white,
                    fontSize: 17,
                    onPressed: () => Navigator.pushNamed(context, '/join-room'),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
