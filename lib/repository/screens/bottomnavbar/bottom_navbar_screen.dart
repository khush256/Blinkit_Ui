import 'package:blinkit/repository/screens/cart/cart_screen.dart';
import 'package:blinkit/repository/screens/category/category_screen.dart';
import 'package:blinkit/repository/screens/home/homescreen.dart';
import 'package:blinkit/repository/screens/print/print_screen.dart';
import 'package:blinkit/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int currentIndex = 0;
  List<Widget> pages = [
    HomeScreen(),
    CartScreen(),
    CategoryScreen(),
    PrintScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: currentIndex, children: pages),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: UiHelper.customImage(img: 'home.png'),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: UiHelper.customImage(img: 'cart.png'),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: UiHelper.customImage(img: 'category.png'),
            label: "Category",
          ),
          BottomNavigationBarItem(
            icon: UiHelper.customImage(img: 'printer.png'),
            label: "Print",
          ),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}
