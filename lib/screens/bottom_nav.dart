import 'package:flutter/material.dart';
import 'package:flutter1_final_project/screens/my_categories_screen.dart';
import 'package:flutter1_final_project/screens/home_screen.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int bottomNavIndex = 0;

  final List<Widget> body = const [
    HomeScreen(),
    MyCategoriesScreen(),
    Center(child: Text("Cart")),
    Center(child: Text("Favorite")),
    Center(child: Text("Profile")),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: body[bottomNavIndex],
        backgroundColor: Colors.white,
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: bottomNavIndex,
          onTap: (index) {
            setState(() {
              bottomNavIndex = index;
            });
          },
          selectedItemColor: Colors.orangeAccent,
          unselectedItemColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_rounded),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.compare_arrows_rounded),
              label: "All Categories",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_rounded),
              label: "Cart",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_rounded),
              label: "Favorite",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_rounded),
              label: "Profile",
            ),
          ],
        ),
      );
  }
}
