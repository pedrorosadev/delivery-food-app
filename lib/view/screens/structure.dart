import 'package:delivery/view/screens/favorites_page.dart';
import 'package:delivery/view/screens/home_page.dart';
import 'package:delivery/view/screens/notification_page.dart';
import 'package:delivery/view/screens/shopping_cart.dart';
import 'package:flutter/material.dart';
import 'package:sliding_clipped_nav_bar/sliding_clipped_nav_bar.dart';

import '../widgets/drawer.dart';

class StructurePage extends StatefulWidget {
  const StructurePage({Key? key}) : super(key: key);

  @override
  State<StructurePage> createState() => _StructurePageState();
}

class _StructurePageState extends State<StructurePage> {
  PageController _pageViewController = PageController();
  int selectedIndex = 0;

  void initState() {
    super.initState();
    _pageViewController = PageController(initialPage: selectedIndex);
  }

  void onButtonPressedFunction(int index) {
    setState(() {
      selectedIndex = index;
    });
    _pageViewController.animateToPage(selectedIndex,
        duration: const Duration(milliseconds: 400), curve: Curves.easeOutQuad);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerPage(),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xFFFAFAFA),
      ),
      bottomNavigationBar: SlidingClippedNavBar.colorful(
        backgroundColor: const Color(0xFFFAFAFA),
        onButtonPressed: onButtonPressedFunction,
        iconSize: 30,
        selectedIndex: selectedIndex,
        barItems: [
          BarItem(
            icon: Icons.home_outlined,
            title: 'Início',
            activeColor: const Color(0xFFF54748),
            inactiveColor: Colors.grey,
          ),
          BarItem(
            icon: Icons.favorite_border_outlined,
            title: 'Favorito',
            activeColor: const Color(0xFFF54748),
            inactiveColor: Colors.grey,
          ),
          BarItem(
            icon: Icons.notifications_outlined,
            title: 'Notificações',
            activeColor: const Color(0xFFF54748),
            inactiveColor: Colors.grey,
          ),
          BarItem(
            icon: Icons.shopping_cart_outlined,
            title: 'Carrinho',
            activeColor: const Color(0xFFF54748),
            inactiveColor: Colors.grey,
          ),

          /// Add more BarItem if you want
        ],
      ),
      body: PageView(
        controller: _pageViewController,
        physics: const NeverScrollableScrollPhysics(),
        children: const [
          HomePage(),
          FavoritesPage(),
          NotificationPage(),
          ShoppingCartPage(),
        ],
      ),
    );
  }
}
