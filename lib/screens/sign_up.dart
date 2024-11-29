import 'package:books_search/screens/home.dart';
import 'package:books_search/screens/login.dart';
import 'package:books_search/widgets/my_button.dart';
import 'package:books_search/widgets/widgets.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 66,
              ),
              Center(
                  child: Image.asset(
                'assets/images/ALPHA Logo.png',
                height: 139,
                width: 139,
              )),
              const SizedBox(
                height: 80,
              ),
              oneFormField('Name'),
              const SizedBox(
                height: 20,
              ),
              oneFormField('Email'),
              const SizedBox(
                height: 20,
              ),
              oneFormField('Phone'),
              const SizedBox(
                height: 20,
              ),
              oneFormField('Password'),
              const SizedBox(
                height: 40,
              ),
              MyButton(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const HomeScreen()));
                },
                title: 'Create Account',
                color: Colors.red,
                textColor: Colors.white,
              ),
              const SizedBox(
                height: 37,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const Login()));
                },
                child: const Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                          text: 'Already Have An Account? ',
                          style: TextStyle(color: Color(0xff828282))),
                      TextSpan(
                        text: 'Log In here',
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
