import 'package:flutter/material.dart';
import 'package:flutter1_final_project/data/app_data.dart';
import 'package:flutter1_final_project/widgets/category_small_card.dart';
import 'package:flutter1_final_project/widgets/trending_deal_card.dart';
import '../widgets/my_button.dart';
import '../widgets/my_offer_big_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Good Morning",
                      style: TextStyle(color: Colors.grey[600], fontSize: 15, fontFamily: "Poppins"),
                    ),
                    const Text(
                      "Ahmed-Alshobaki",
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 22,
                        color: Colors.black38,
                        fontFamily: "Poppins"
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                  child: Icon(Icons.notifications_rounded, color: Colors.black),
                ),
              ],
            ),
            const SizedBox(height: 24),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  MyOfferBigCard(path: "assets/images/recipe_image1.png", text1: "Recommended", text2: "Recipe Today"),
                  const SizedBox(width: 16),
                  MyOfferBigCard(path: "assets/images/recipe_image2.png", text1: "Fresh Fruit", text2: "Delivery"),
                ],
              ),
            ),

            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Categories",
                  style: const TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 18,
                    color: Colors.black,
                    fontFamily: "Poppins"
                  ),
                ),
                Icon(Icons.arrow_forward_ios, size: 17, color: Colors.black),
              ],
            ),
            const SizedBox(height: 16),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                spacing: 10,
                children: [
                  CategorySmallCard(path: 'assets/icons/fruit.png'),
                  CategorySmallCard(path: 'assets/icons/vegetable.png'),
                  CategorySmallCard(path: 'assets/icons/mushroom.png'),
                  CategorySmallCard(path: 'assets/icons/dairy.png'),
                  CategorySmallCard(path: 'assets/icons/oats.png'),
                  CategorySmallCard(path: 'assets/icons/bread.png'),
                  CategorySmallCard(path: 'assets/icons/rice.png'),
                  CategorySmallCard(path: 'assets/icons/egg.png'),
                ],
              ),
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Trending Deals",
                  style: const TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 18,
                    color: Colors.black,
                    fontFamily: "Poppins"
                  ),
                ),
                Icon(Icons.arrow_forward_ios, size: 16, color: Colors.black),
              ],
            ),
            const SizedBox(height: 16),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
                childAspectRatio: 0.85,
              ),
              itemCount: 4,
              itemBuilder: (context, index) {
                final deal = AppData.myHomeItems[index];
                return TrendingDealCard(
                  path: deal.imagePath,
                  name: deal.name,
                  price: deal.price,
                  isFavorite: deal.isSelected,
                );
              },
            ),
            const SizedBox(height: 24),
            MyButton(
              text: "More",
              color: Colors.black,
              textColor: Colors.white,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
