import 'package:flutter/material.dart';

import '../../../core/widgets/custom_app_bar.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize:
            Size.fromHeight(kToolbarHeight), // Adjust the height as needed
        child: CustomAppBar(),
      ),
    );
  }
}
