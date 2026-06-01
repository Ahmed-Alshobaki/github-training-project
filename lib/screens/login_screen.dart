import 'package:flutter/material.dart';
import '../widgets/my_button.dart';
import '../widgets/my_input_text_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [

          SizedBox(
            height: double.infinity,
            child: Image.asset(
              'assets/images/signin_bg.png',
              fit: BoxFit.fitWidth,
              alignment: Alignment.topCenter,
            ),
          ),
          Positioned(
            top: 40,
            left: 0,
            child: IconButton(onPressed: () {

            }, icon: Icon(Icons.arrow_back, color: Colors.white, size: 30,)),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
              ),
              padding: const EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Sign In",
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 26,
                          color: Colors.black,
                          fontFamily: "Poppins"
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Colors.black),
                          child: const Icon(Icons.close,
                              color: Colors.white, size: 20),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 40),
                  const MyInputTextField(hintText: "Email"),
                  const SizedBox(height: 30),
                  const MyInputTextField(
                    hintText: "Password",
                    isPassword: true,
                  ),
                  const SizedBox(height: 20),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(
                        color: Colors.orange[800],
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Poppins"
                      ),
                    ),
                  ),
                  const SizedBox(height: 26,),
                  MyButton(
                    text: "SIGN IN",
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/bottom_nav');
                    },
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}