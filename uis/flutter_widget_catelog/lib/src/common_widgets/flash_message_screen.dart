// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FlashMessageScreen extends StatelessWidget {
  const FlashMessageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: const Text('FlashMessageScreen'),
          onPressed: () {
            SnackBar(
              content: Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    padding: const EdgeInsets.all(16),
                    height: 90,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.red,
                    ),
                    child: const Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Text(
                                'Oh snap!',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              ),
                              Spacer(),
                              Text(
                                'That email is already in use! Please try with a different one.',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: -20,
                    left: 0,
                    child: Stack(
                      children: [
                        SvgPicture.asset(
                          "assets/fail.svg",
                          height: 40,
                        ),
                        SvgPicture.asset(
                          "assets/close.svg",
                          height: 40,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              behavior: SnackBarBehavior.floating,
              backgroundColor: Colors.transparent,
              elevation: 0,
            );
          },
        ),
      ),
    );
  }
}
