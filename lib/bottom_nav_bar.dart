import 'package:flutter/material.dart';
import 'package:learning_app/account_screen.dart';
import 'package:learning_app/my_classes_screen.dart';
import 'package:learning_app/home_screen.dart';

class BottomNvaBar extends StatefulWidget {
  const BottomNvaBar({super.key});

  @override
  State<BottomNvaBar> createState() => _BottomNvaBarState();
}

class _BottomNvaBarState extends State<BottomNvaBar> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    const HomeScreen(),
    const MyClassesScreen(),
    const AccountScreen(),
  ];
  _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _screens[_selectedIndex]),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            activeIcon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.class_,
            ),
            activeIcon: Icon(Icons.class_outlined),
            label: 'My Classes',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_2,
            ),
            activeIcon: Icon(Icons.person_2_outlined),
            label: 'Account',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        // backgroundColor: Colors.transparent,
        selectedItemColor: Colors.purple,
        unselectedItemColor: Colors.purple,
      ),
    );
  }
}
