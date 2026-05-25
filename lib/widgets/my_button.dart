import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final bool isOutline;
  final Color? color;
  final Color? textColor;

  const MyButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.isOutline = false,
    this.color,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    final buttonColor =
        color ?? (isOutline ? Colors.white : const Color(0xFFFFB800));
    final textBtnColor = textColor ?? (isOutline ? Colors.black : Colors.white);

    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        foregroundColor: textBtnColor,
        backgroundColor: buttonColor,
        side: isOutline
            ? const BorderSide(color: Colors.black, width: 1.5)
            : BorderSide.none,
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        minimumSize: const Size(double.infinity, 56),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16,
          letterSpacing: 0.5,
          fontFamily: "Poppins"
        ),
      ),
    );
  }
}
