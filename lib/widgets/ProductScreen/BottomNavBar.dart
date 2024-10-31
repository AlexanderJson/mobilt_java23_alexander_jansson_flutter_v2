import 'package:flutter/material.dart';


class BottomNavBar extends StatelessWidget {
  final int selectedItem;
  final ValueChanged<int> onItemTapped;

  const BottomNavBar({super.key, required this.selectedItem, required this.onItemTapped});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: selectedItem,
      onTap: onItemTapped,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.store),
          label: 'Store',
        ),
      ],
    );
  }
}