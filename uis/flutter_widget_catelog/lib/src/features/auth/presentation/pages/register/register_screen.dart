import 'package:flutter/material.dart';

import '../login/login_screen.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final inputBorder = OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.black),
      borderRadius: BorderRadius.circular(12),
    );
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            const Padding(
              padding: EdgeInsets.only(left: 15.0, bottom: 8),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // const SizedBox(height: 40),
                  Row(
                    children: [
                      Text(
                        'Register Screen',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 18),
                  Text(
                    'Join us to explore top amazing movies and series with Imdb rating',
                  )
                ],
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  TextFormField(
                    style: const TextStyle(fontSize: 14),
                    decoration: InputDecoration(
                      labelText: 'Email',
                      border: inputBorder,
                      prefixIcon: const Icon(Icons.email),
                    ),
                  ),
                  const SizedBox(height: 15),
                  TextFormField(
                    style: const TextStyle(fontSize: 14),
                    decoration: InputDecoration(
                      labelText: 'Password',
                      border: inputBorder,
                      prefixIcon: const Icon(Icons.fingerprint),
                      suffixIcon: const Icon(Icons.visibility_off),
                    ),
                  ),
                  const SizedBox(height: 15),
                  TextFormField(
                    style: const TextStyle(fontSize: 14),
                    decoration: InputDecoration(
                      labelText: 'Confirm Password',
                      border: inputBorder,
                      prefixIcon: const Icon(Icons.fingerprint),
                      suffixIcon: const Icon(Icons.visibility_off),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Container(
                    width: double.maxFinite,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: MaterialButton(
                      child: const Text(
                        "Register",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 70.0),
              child: Row(
                children: [
                  const Text(
                    "Already have an account?",
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => const LoginScreen(),
                      ),
                    ),
                    child: const Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .01,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
              child: Divider(
                height: 1,
                color: Colors.black.withOpacity(.3),
              ),
            ),
            Text(
              'By continuing your confirm that you agree \nwith our Term and Condition',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodySmall,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .02,
            )
          ],
        ),
      )),
    );
  }
}
