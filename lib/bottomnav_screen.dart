import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'package:iconsax/iconsax.dart';
import 'package:valivrem/src/constants/color.dart';
import 'package:valivrem/src/features/cart/cart_screen.dart';
import 'package:valivrem/src/features/favorites/favorite_screen.dart';
import 'package:valivrem/src/features/home/home_screen.dart';
import 'package:valivrem/src/features/mores/more_screen.dart';
import 'package:valivrem/src/features/orders/orders_screen.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  final items = const [
    Icon(
      Iconsax.home,
      size: 30.0,
      color: Colors.white,
    ),
    Icon(
      Iconsax.like,
      size: 30.0,
      color: Colors.white,
    ),
    Icon(
      Iconsax.shopping_cart,
      size: 30.0,
      color: Colors.white,
    ),
    Icon(
      Iconsax.note,
      size: 30.0,
      color: Colors.white,
    ),
    Icon(
      Iconsax.more,
      size: 30.0,
      color: Colors.white,
    ),
  ];
  int index = 2;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: TColors.primary,
        bottomNavigationBar: CurvedNavigationBar(
          items: items,
          color: Colors.black,
          index: index,
          onTap: (selectedIndex) {
            setState(() {
              index = selectedIndex;
            });
          },
          height: 70,
          backgroundColor: Colors.transparent,
          animationDuration: const Duration(milliseconds: 300),
        ),
        body: Container(
          color: TColors.primary,
          width: double.infinity,
          height: double.infinity,
          alignment: Alignment.center,
          child: getSelectedWidget(index: index),
        ),
      ),
    );
  }

  Widget getSelectedWidget({required int index}) {
    Widget widget;
    switch (index) {
      case 0:
        widget = const HomeScreen();
        break;
      case 1:
        widget = const FavoritesScreen();
        break;
      case 2:
        widget = const CartScreen();
        break;
      case 3:
        widget = const OrdersScreen();
        break;
      case 4:
        widget = const MoreScreen();
        break;
      default:
        widget = const HomeScreen();
        break;
    }
    return widget;
  }
}
