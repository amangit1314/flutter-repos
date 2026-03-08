import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../assets.dart';
import '../../../../core/providers/account.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
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
      padding: const EdgeInsets.fromLTRB(60, 0, 60, 0),
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
            controller: _emailController,
            autofocus: false,
            autocorrect: false,
            enableSuggestions: false,
            decoration: const InputDecoration(
              filled: true,
              fillColor: Colors.grey,
              labelText: 'Email',
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
                "Sign in",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 22.0),
              ),
              onPressed: () async {
                final api = context.read<AccountProvider>();
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

                await api.login(email, password);
              },
            ),
          ),
          const SizedBox(height: 40.0),
          MaterialButton(
            child: const Text(
              "Don't have an account? Sign up",
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {
              setState(() {
                _selectedIndex = 1;
              });
            },
          ),
          const SizedBox(height: 10.0),
          MaterialButton(
            child: const Text(
              "Forgot your password?",
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
