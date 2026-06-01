import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/onboarding');
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFA726),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(
              height: 190,
              child: Image.asset('assets/images/logo.png'),
            ),
            const SizedBox(height: 16),
            const Text(
              "Fresh Fruits",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w900,
                fontFamily: "Poppins",
                fontSize: 42,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              "Healthy food for every day",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontFamily: "Poppins",
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 80),
          ],
        ),
      ),
    );
  }
}