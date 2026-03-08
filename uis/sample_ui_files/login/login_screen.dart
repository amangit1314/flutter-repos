import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../register/register_screen.dart';
import '../widgets/social_card.dart';
import 'components/login_form.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool remember = false;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    final inputBorder = OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.black),
      borderRadius: BorderRadius.circular(12),
    );
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: IconButton(
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              ),
              onPressed: () => Navigator.pop(context),
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, bottom: 8),
              child: Column(
                children: [
                  SizedBox(height: height * .01),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Text(
                        'Login Screen',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 21,
                          fontWeight: FontWeight.w600,
                          color: Colors.indigo,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: height * 0.04),
                  const Text(
                    'Join us for certifications at discount with complete placement support',
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            //? Login Form
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: LoginForm(inputBorder: inputBorder, height: height),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(
                        value: remember,
                        activeColor: Colors.black,
                        onChanged: (value) {
                          setState(() {
                            remember = value!;
                          });
                        },
                      ),
                      Text(
                        "Remember me",
                        style: TextStyle(
                          color: Colors.indigo.withOpacity(.3),
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: GestureDetector(
                      child: Text(
                        "forgot password?",
                        style: TextStyle(
                          color: Colors.indigo.withOpacity(.9),
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Divider(
                height: 1,
                color: Colors.indigo.withOpacity(.3),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Text(
                    "continue with social media ",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.indigo.withOpacity(.3),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SocialCard(
                        icon: const FaIcon(
                          FontAwesomeIcons.google,
                          color: Colors.indigo,
                        ),
                        press: () {},
                      ),
                      SocialCard(
                        icon: const FaIcon(
                          FontAwesomeIcons.phone,
                          color: Colors.indigo,
                        ),
                        press: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60.0),
              child: Row(
                children: [
                  const Text(
                    "Don't have an account?",
                    style: TextStyle(fontSize: 12),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => const RegisterScreen()),
                    ),
                    child: const Text(
                      "Register",
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: Colors.indigo,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
