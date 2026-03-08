import 'package:flutter/material.dart';
import 'package:flutter_widget_catelog/src/features/home/presentation/pages/home_screen.dart';
import 'package:flutter_widget_catelog/src/features/auth/presentation/pages/register/register_screen.dart';

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
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, bottom: 8),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: height * .02),
                    const Row(
                      children: [
                        Text(
                          'Login Screen',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: height * 0.08),
                    const Text(
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),
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
                    SizedBox(height: height * .015),
                    TextFormField(
                      style: const TextStyle(fontSize: 14),
                      decoration: InputDecoration(
                        labelText: 'Password',
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
                        child: Text(
                          "Login",
                          style: TextStyle(
                            color: Colors.white.withOpacity(.8),
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const HomeScreen(),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
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
                        Text("Remember me", style: TextStyle(color: Colors.black.withOpacity(.3), fontSize: 13)),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: GestureDetector(
                        // onTap: () => Navigator.pushNamed(
                        //   context,
                        //   //ForgotPasswordScreen.routeName,
                        // ),
                        child: Text(
                          "forgot password?",
                          style: TextStyle(color: Colors.black.withOpacity(.3), fontSize: 13),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Divider(
                  height: 1,
                  color: Colors.black.withOpacity(.3),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Text(
                      "continue with social media",
                      style: TextStyle(fontSize: 12, color: Colors.black.withOpacity(.3)),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SocialCard(
                            icon: "images/google.png",
                            press: () {
                              // AuthMethods().signInWithGoogle();
                            }),
                        SocialCard(
                          icon: "images/facebook_circle.png",
                          press: () {},
                        ),
                        SocialCard(
                          icon: "images/twitter_circle.png",
                          press: () {},
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 60.0),
                child: Row(
                  children: [
                    const Text(
                      "Don't have an account?",
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) => const RegisterScreen(),
                        ),
                      ),
                      child: const Text(
                        "Register",
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
                height: height * .02,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SocialCard extends StatelessWidget {
  const SocialCard({
    Key? key,
    required this.icon,
    required this.press,
  }) : super(key: key);

  final String? icon;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        padding: const EdgeInsets.all(12),
        height: 40,
        width: 40,
        decoration: const BoxDecoration(
          color: Color(0xFFF5F6F9),
          shape: BoxShape.circle,
        ),
        child: Image.asset(icon!),
      ),
    );
  }
}
