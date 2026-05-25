import 'package:flutter/material.dart';

class MyOfferBigCard extends StatelessWidget {
  final String path;
  final String text1;
  final String text2;

  const MyOfferBigCard({
    super.key,
    required this.path,
    required this.text1,
    required this.text2,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 350,
      decoration: BoxDecoration(
        color: const Color(0xFFFDEFD9),
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Container(
        height: 160,
        width: 300,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          image: DecorationImage(image: AssetImage(path), fit: BoxFit.cover),
        ),
        child: Container(
          alignment: Alignment.bottomLeft,
          child: Text(
            "$text1\n $text2",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontFamily: "Poppins",
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
