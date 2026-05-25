import '../models/category_item.dart';
import '../models/home_item.dart';

class AppData {
  static const myHomeItems = [
    HomeItem(
      imagePath: 'assets/images/avocado.png',
      name: "Avocado",
      price: 0.7,
      isSelected: true,
    ),
    HomeItem(
      imagePath: 'assets/images/broccoli.png',
      name: "Broccoli",
      price: 0.7,
      isSelected: false,
    ),
    HomeItem(
      imagePath: 'assets/images/tomatoes.png',
      name: "Tomatoes",
      price: 0.9,
      isSelected: true,
    ),
    HomeItem(
      imagePath: 'assets/images/grapes.png',
      name: "Grapes",
      price: 1.2,
      isSelected: false,
    ),
  ];

  static const myCategories = [
    CategoryItem(
      iconPath: 'assets/icons/fruit.png',
      title: "Fruits",
      itemCount: 17,
    ),
    CategoryItem(
      iconPath: 'assets/icons/vegetable.png',
      title: "Vegetables",
      itemCount: 17,
    ),
    CategoryItem(
      iconPath: 'assets/icons/mushroom.png',
      title: "Mushroom",
      itemCount: 17,
    ),
    CategoryItem(
      iconPath: 'assets/icons/dairy.png',
      title: "Dairy",
      itemCount: 17,
    ),
    CategoryItem(
      iconPath: 'assets/icons/oats.png',
      title: "Oats",
      itemCount: 17,
    ),
    CategoryItem(
      iconPath: 'assets/icons/bread.png',
      title: "Bread",
      itemCount: 17,
    ),
    CategoryItem(
      iconPath: 'assets/icons/rice.png',
      title: "Rice",
      itemCount: 17,
    ),
    CategoryItem(iconPath: 'assets/icons/egg.png', title: "Egg", itemCount: 17),
  ];
}
