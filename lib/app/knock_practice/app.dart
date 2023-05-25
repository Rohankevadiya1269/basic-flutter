import 'package:classico/app/knock_practice/explore_screen.dart';
import 'package:classico/app/knock_practice/home_screen.dart';
import 'package:classico/app/knock_practice/knockoff_screen.dart';
import 'package:classico/app/knock_practice/more_screen.dart';
import 'package:classico/app/knock_practice/mydigest_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  int _currentIndex = 0;
  final List<Widget> _pages = [
    // Define your pages/screens here
    const HomeScreen(),
    const ExploreScreen(),
    const MyDigest(),
    const Knockoff(),
    const MoreScreen(),
  ];

  _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _pages[_currentIndex]),
      bottomNavigationBar: CupertinoTabBar(
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        backgroundColor: Colors.black,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: ImageIcon(
              const AssetImage('assets/logos/home.png'),
              color: _currentIndex == 0 ? const Color(0xff0B98AF) : Colors.grey,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: const ImageIcon(
              AssetImage('assets/logos/explore2.png'),
              // color: _currentIndex == 1 ? const Color(0xff0B98AF) : Colors.grey,
            ),
            label: 'Explore',
            activeIcon: Image.asset(
              'assets/logos/explore2.png',
              color: const Color(0xff0B98AF),
            ),
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              const AssetImage('assets/logos/mydigest.png'),
              color: _currentIndex == 2
                  ? const Color(0xFFEE7F1A)
                  : const Color(0xFFEE7F1A),
            ),
            label: 'My Digest',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              const AssetImage('assets/logos/knockoff.png'),
              color: _currentIndex == 3 ? const Color(0xff0B98AF) : Colors.grey,
            ),
            label: 'Knockoff',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              const AssetImage('assets/logos/more.png'),
              color: _currentIndex == 4 ? const Color(0xff0B98AF) : Colors.grey,
            ),
            label: 'More',
          ),
        ],
      ),
    );
  }
}
