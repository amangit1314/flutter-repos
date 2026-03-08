import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../core/providers/account.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    final current = context.watch<AccountProvider>().current;

    _emailController.text = current?.email ?? "";

    return Scaffold(
      extendBodyBehindAppBar: true,
      body: IndexedStack(
        index: _selectedIndex,
        children: const [
          // SignIn(),
          // SignUp(),
        ],
      ),
    );
  }
}
