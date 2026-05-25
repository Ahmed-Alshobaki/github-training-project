import 'package:flutter/material.dart';

class CategoryBigCard extends StatelessWidget {
  final String path;
  final String title;
  final String quantity;
  final bool isSelected;
  final VoidCallback onClick;

  const CategoryBigCard({
    super.key,
    required this.path,
    required this.title,
    required this.quantity,
    this.isSelected = false,
    required this.onClick,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xFFFFB800) : Colors.white,
          borderRadius: BorderRadius.circular(50.0),
          boxShadow: [
            BoxShadow(
              color: isSelected ? Colors.black26 : Colors.black12,
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 60,
              width: 60,
              child: Image.asset(
                path,
                fit: BoxFit.contain,
                color: isSelected ? Colors.black : Colors.orangeAccent,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                fontFamily: "Poppins",
                color: isSelected ? Colors.black : Colors.orangeAccent,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              quantity,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: "Poppins",
                fontSize: 12,
                color: isSelected
                    ? Colors.black
                    : Colors.orangeAccent,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      );
  }
}