import 'package:flutter/material.dart';
import '../widgets/my_button.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(height: 20),
              const SizedBox(height: 40,),
              Container(
                  alignment: Alignment.center,
                  child:
                    Image.asset('assets/images/onboarding.png',
                        height: 300, width: 300, fit: BoxFit.contain),
              ),
              const Spacer(),
              Column(
                children: [
                  const Text(
                    "Fast and responsibly delivery by our courier",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 22,
                      color: Colors.black,
                      fontFamily: "Poppins",
                      height: 1.3,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[700],
                      height: 1.5,
                      fontFamily: "Poppins"
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Column(
                children: [
                  MyButton(
                    text: "CREATE AN ACCOUNT",
                    color: Colors.black,
                    textColor: Colors.white,
                    onPressed: () {
                      Navigator.pushNamed(context, '/register');
                    },
                  ),
                  const SizedBox(height: 16),
                  MyButton(
                    text: "LOGIN",
                    isOutline: true,
                    textColor: Colors.black,
                    onPressed: () {
                      Navigator.pushNamed(context, '/login');
                    },
                  ),
                ],
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}