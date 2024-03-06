import "package:flutter/material.dart";
//import "package:uni_ibadan_navigator/screens/login_signup.dart";

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> with SingleTickerProviderStateMixin {
  // @override
  // void initState() {
  // TODO: implement initState
  // super.initState();
  // SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

  //duration for the splashscreen
  // Future.delayed(
  // const Duration(seconds: 10),
  // () {
  // Navigator.of(context).pushReplacement(
  // MaterialPageRoute(
  // builder: (_) => SignUpPage(),
  // ),
  // );
  // },
  // );
  // }

  // @override
  // void dispose() {
  // SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
  // overlays: SystemUiOverlay.values);
  // super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 2, 21, 124),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //ui logo coupled with naviagtion icon here
            Image.asset(
              "lib/images/uilogo.png",
              height: 100,
              width: 100,
            ),

            const SizedBox(
              height: 20,
            ),
            const Text(
              "Uni-Ibadan Campus Navigator",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
