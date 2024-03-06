import 'package:flutter/material.dart';

//this is the homepage

class MainHomeScreen extends StatelessWidget {
  const MainHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Logged in'),
      ),
    );
  }
}
