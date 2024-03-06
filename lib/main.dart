import "package:flutter/material.dart";
import 'package:uni_ibadan_navigator/screens/auth_page.dart';
//import "package:uni_ibadan_navigator/screens/login_signup.dart";
//import "package:uni_ibadan_navigator/screens/splash_screen.dart";
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp((const UniIbadanNavigationApp()));
}

class UniIbadanNavigationApp extends StatelessWidget {
  const UniIbadanNavigationApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      home: const Authpage(),
    );
  }
}
