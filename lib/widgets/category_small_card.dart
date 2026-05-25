import 'package:flutter/material.dart';

class CategorySmallCard extends StatelessWidget {

  final String path;

  const CategorySmallCard({super.key, required this.path});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(15.0),
      ),
      padding: const EdgeInsets.all(8.0),
      height: 80,
      width: 120,
      child: ImageIcon(AssetImage(path), color: Colors.deepPurple, size: 35,),
    );
  }
}
