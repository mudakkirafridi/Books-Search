import 'package:books_search/screens/sign_up.dart';
import 'package:books_search/widgets/my_button.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEF5A5A),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/bro.png',
                  height: MediaQuery.of(context).size.height * 0.5,
                ),
                const SizedBox(
                  height: 55,
                ),
                const Text(
                  'Welcome',
                  style: TextStyle(
                      fontSize: 36,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  'Read Without Limit',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                const SizedBox(
                  height: 50,
                ),
                MyButton(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const SignUp()));
                  },
                  title: "Create Account",
                  color: Colors.white,
                ),
                const SizedBox(
                  height: 20,
                ),
                const MyButton(
                  title: "Log In as Guest",
                  color: Colors.red,
                  textColor: Colors.white,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
