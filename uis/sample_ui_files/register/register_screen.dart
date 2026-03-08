import 'package:flutter/material.dart';

import '../login/login_screen.dart';
import 'components/registration_form.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Shader linearGradient = const LinearGradient(
      colors: <Color>[Colors.indigo, Colors.deepPurpleAccent],
    ).createShader(const Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));
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
        child: ListView(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, bottom: 8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Text(
                  //   'Beyond Study',
                  //   textAlign: TextAlign.center,
                  //   style: TextStyle(
                  //     fontSize: 24,
                  //     foreground: Paint()..shader = linearGradient,
                  //     fontWeight: FontWeight.w900,
                  //   ),
                  // ),
                  const SizedBox(height: 20),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Registeration Screen',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 21,
                          // color: Colors.indigo,
                          foreground: Paint()..shader = linearGradient,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 18),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                      'Join us to explore top amazing courses from companies at lower charge',
                      textAlign: TextAlign.center,
                      // style: TextStyle(align: ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.04),
            RegistrationForm(inputBorder: inputBorder),
            SizedBox(height: MediaQuery.of(context).size.height * 0.04),
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
                        color: Colors.indigoAccent,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * .04),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15.0,
                vertical: 8,
              ),
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
      ),
    );
  }
}
