import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../assets.dart';
import '../../../../core/providers/account.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  late int _selectedIndex;

  @override
  void initState() {
    super.initState();
    _selectedIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              Assets.netflixLogo1,
              width: 200,
            ),
          ),
          const SizedBox(height: 60),
          TextField(
            controller: _nameController,
            autofocus: false,
            autocorrect: false,
            enableSuggestions: false,
            decoration: const InputDecoration(
              filled: true,
              fillColor: Colors.grey,
              labelText: 'Your name',
              floatingLabelStyle: TextStyle(color: Colors.black),
              focusedBorder: InputBorder.none,
              border: InputBorder.none,
            ),
          ),
          Container(
            height: 0.1,
            color: Colors.black,
          ),
          TextField(
            controller: _emailController,
            autofocus: false,
            autocorrect: false,
            enableSuggestions: false,
            decoration: const InputDecoration(
              filled: true,
              fillColor: Colors.grey,
              labelText: 'Email address',
              floatingLabelStyle: TextStyle(color: Colors.black),
              focusedBorder: InputBorder.none,
              border: InputBorder.none,
            ),
          ),
          Container(
            height: 0.1,
            color: Colors.black,
          ),
          TextField(
            controller: _passwordController,
            obscureText: true,
            autofocus: false,
            autocorrect: false,
            enableSuggestions: false,
            decoration: const InputDecoration(
              filled: true,
              fillColor: Colors.grey,
              labelText: 'Password',
              floatingLabelStyle: TextStyle(color: Colors.black),
              focusedBorder: InputBorder.none,
              border: InputBorder.none,
            ),
          ),
          const SizedBox(height: 20.0),
          SizedBox(
            width: double.infinity,
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                side: const BorderSide(width: 1.0, color: Colors.grey),
              ),
              child: const Text(
                "Sign up",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 22.0),
              ),
              onPressed: () async {
                final api = context.read<AccountProvider>();
                final name = _nameController.text;
                final email = _emailController.text;
                final password = _passwordController.text;

                if (email.isEmpty || password.isEmpty) {
                  showDialog(
                      context: context,
                      builder: (_) => AlertDialog(
                            title: const Text('Error'),
                            content: const Text(
                                'Please enter your email and password'),
                            actions: [
                              TextButton(
                                child: const Text('OK'),
                                onPressed: () => Navigator.of(context).pop(),
                              )
                            ],
                          ));

                  return;
                }

                await api.register(email, password, name);
              },
            ),
          ),
          const SizedBox(height: 10.0),
          MaterialButton(
            child: const Text(
              "Forgot your password?",
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {},
          ),
          const SizedBox(height: 40.0),
          MaterialButton(
            child: const Text(
              "Already have an account? Sign in",
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {
              setState(() {
                _selectedIndex = 0;
              });
            },
          ),
        ],
      ),
    );
  }
}
