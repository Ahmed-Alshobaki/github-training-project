import 'package:flutter/material.dart';
import 'package:flutter1_final_project/data/app_data.dart';
import '../widgets/category_big_card.dart';

class MyCategoriesScreen extends StatelessWidget {
  const MyCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back, color: Colors.black, size: 20),
                  onPressed: () {},
                ),
                Center(
                  child: const Text(
                    "Categories",
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 22,
                      color: Colors.black,
                      fontFamily: "Poppins",
                    ),
                  ),
                ),
                SizedBox(width: 40),
              ],
            ),
            Container(
              color: Colors.grey.shade300,
              child: GridView.builder(
                shrinkWrap: true,
                padding: const EdgeInsets.all(40.0),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                ),
                itemCount: AppData.myCategories.length,
                itemBuilder: (context, index) {
                  final category = AppData.myCategories[index];
                  return CategoryBigCard(
                    path: category.iconPath,
                    title: category.title,
                    quantity: "${category.itemCount} items",
                    isSelected: category.title == "Fruits",
                    onClick: () {},
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}


