import "package:flutter/material.dart";

class LoginButton extends StatelessWidget {
  final Function()? onTap;

  const LoginButton({
    super.key,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      // ignore: avoid_unnecessary_containers
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 2, 21, 124),
          borderRadius: BorderRadius.circular(8),
        ),
        child: const Center(
          child: Text(
            'Login',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
