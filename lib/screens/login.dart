import 'package:books_search/screens/home.dart';
import 'package:books_search/screens/sign_up.dart';
import 'package:books_search/widgets/my_button.dart';
import 'package:books_search/widgets/widgets.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 120,
              ),
              Center(
                  child: Image.asset(
                'assets/images/ALPHA Logo.png',
                height: 175,
                width: 175,
              )),
              const SizedBox(
                height: 60,
              ),
              oneFormField('Username'),
              const SizedBox(
                height: 20,
              ),
              oneFormField('Password'),
              const SizedBox(
                height: 50,
              ),
              MyButton(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const HomeScreen()));
                },
                title: 'Log in',
                textColor: Colors.white,
              ),
              const SizedBox(
                height: 37,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const SignUp()));
                },
                child: const Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                          text: 'Dont Have An Account? ',
                          style: TextStyle(color: Color(0xff828282))),
                      TextSpan(
                        text: 'Sign Up here',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xff828282)),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
