import "package:firebase_auth/firebase_auth.dart";
import "package:flutter/material.dart";
import "package:uni_ibadan_navigator/screens/login_signup.dart";
import "package:uni_ibadan_navigator/screens/main_home_screen.dart";

class Authpage extends StatelessWidget {
  const Authpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: ((context, snapshot) {
        // is user logged in?
        if (snapshot.hasData) {
          return const MainHomeScreen();
          // if not
        } else {
          return SignUpPage();
        }
      }),
    ));
  }
}
