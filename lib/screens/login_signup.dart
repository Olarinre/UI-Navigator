// ignore_for_file: library_private_types_in_public_api

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:uni_ibadan_navigator/ui_c%20omponents/login_button.dart';

import '../ui_c omponents/textfield.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({super.key});

  //text editing controllers
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  //sign user in function

  //AuthPage authpage = const AuthPage();

  void signUserIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: emailController.text,
      password: passwordController.text,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //   appBar: AppBar(
      //     backgroundColor: Colors.blue,
      //   ),
      //backgroundColor: Color.fromARGB(255, 250, 246, 246),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: SafeArea(
            child: Column(
              children: [
                // const SizedBox(height: 10),

                const Icon(
                  Icons.lock,
                  size: 100,
                  color: Color.fromARGB(255, 2, 21, 124),
                ),

                const Text(
                  'Glad to meet you again!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                // email textfield

                const Row(
                  children: [
                    Text(
                      'Email',
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 18,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),
                UsernameField(
                  controller: emailController,
                ),

                const SizedBox(height: 10),
                // password textfield

                const Row(
                  children: [
                    Text(
                      'Password',
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 18,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),
                PasswordField(
                  controller: passwordController,
                ),
                const SizedBox(
                  height: 10,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'forget password?',
                      style: TextStyle(
                        color: Color.fromARGB(255, 2, 21, 124),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),

                LoginButton(
                  onTap: signUserIn,
                ),
                const SizedBox(
                  height: 30,
                ),
                const Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 2,
                      ),
                    ),
                    Text('Or Sign in with'),
                    Expanded(
                      child: Divider(
                        thickness: 2,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "lib/images/google-logo-history-png-2603.png",
                          height: 50,
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        const Text('sign in with Google'),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account?",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 4),
                    Text(
                      "Sign up for free",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.amber,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//password field changing icon\

