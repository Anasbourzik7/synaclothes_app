import 'package:flutter/material.dart';
import 'package:syna_app/screens/profile.dart';
import 'package:syna_app/screens/cart_screen.dart';  // Add this import

class Bar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const Bar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: (index) {
        if (index == 2) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ProfilePage()),
          );
        } else if (index == 1) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const CartScreen()),
          );
        } else {
          onTap(index);
        }
      },
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart, color: Colors.blue),
          label: 'Acheter',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_basket),
          label: 'Panier',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profil',
        ),
      ],
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.grey,
      showUnselectedLabels: true,
    );
  }
}
