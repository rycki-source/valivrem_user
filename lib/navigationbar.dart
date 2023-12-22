import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:valivrem/src/constants/color.dart';

import 'package:valivrem/src/features/cart/cart_screen.dart';
import 'package:valivrem/src/features/favorites/favorite_screen.dart';
import 'package:valivrem/src/features/home/home_screen.dart';
import 'package:valivrem/src/features/mores/more_screen.dart';
import 'package:valivrem/src/features/orders/orders_screen.dart';
import 'package:valivrem/src/features/utils/helpers/helper_functions.dart';

class NavigationBarScreen extends StatefulWidget {
  const NavigationBarScreen({super.key});

  @override
  State<NavigationBarScreen> createState() => _NavigationBarScreenState();
}

class _NavigationBarScreenState extends State<NavigationBarScreen> {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final darkMode = THelperFunctions.isDarkMode(context);

    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 80.0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) {
            controller.selectedIndex(index);
          },
          backgroundColor: darkMode ? TColors.black : Colors.white,
          indicatorColor: TColors.primary.withOpacity(0.5),
          destinations: const [
            NavigationDestination(
              icon: Icon(
                Iconsax.home,
                size: 30.0,
              ),
              label: 'Home',
            ),
            NavigationDestination(
                icon: Icon(Iconsax.like, size: 30.0), label: 'Likes'),
            NavigationDestination(
                icon: Icon(Iconsax.shopping_cart, size: 30.0), label: 'cart'),
            NavigationDestination(
                icon: Icon(Iconsax.note, size: 30.0), label: 'Oders'),
            NavigationDestination(
                icon: Icon(Iconsax.more, size: 30.0), label: 'More'),
          ],
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    const HomeScreen(),
    const FavoritesScreen(),
    const CartScreen(),
    const OrdersScreen(),
    const MoreScreen()
  ];
}
