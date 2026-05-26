import 'package:flutter/material.dart';
import '../widgets/my_button.dart';
import '../widgets/my_input_text_field.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        fit: StackFit.expand,
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(
                'assets/images/signup_bg.png',
              ),
                alignment: Alignment.topCenter,
                fit: BoxFit.fitWidth
              )
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
                        "Create your account",
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 24,
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
                  const SizedBox(height: 30),
                  Row(
                    children: const [
                      Expanded(
                        child: MyInputTextField(hintText: "First Name", borderColor: Colors.orangeAccent,),
                      ),
                      SizedBox(width: 16),
                      Expanded(
                        child: MyInputTextField(hintText: "Last Name", borderColor: Colors.orangeAccent,),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const MyInputTextField(hintText: "Email", borderColor: Colors.orangeAccent,),
                  const SizedBox(height: 20),
                  const MyInputTextField(
                    hintText: "Password",
                    isPassword: true,
                    borderColor: Colors.orangeAccent,
                  ),
                  const SizedBox(height: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "By Taping Sign up you accept all",
                        style: TextStyle(color: Colors.grey[600], fontSize: 13, fontFamily: "Poppins"),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "terms ",
                            style: TextStyle(
                                color: Colors.orange[800],
                                fontSize: 13,
                                fontWeight: FontWeight.w500, fontFamily: "Poppins"),
                          ),
                          Text(
                            "and ",
                            style: TextStyle(
                                color: Colors.grey[800],
                                fontSize: 13,
                                fontWeight: FontWeight.w500, fontFamily: "Poppins"),
                          ),
                          Text(
                            "condition",
                            style: TextStyle(
                                color: Colors.orange[800],
                                fontSize: 13,
                                fontWeight: FontWeight.w500, fontFamily: "Poppins"),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 16,),
                  MyButton(
                    text: "CREATE AN ACCOUNT",
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/login');
                    },
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}