import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spotify/screens/home_page.dart';
import 'package:spotify/widgets/bottom_bar_item.dart';

import 'library_page.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final PageController _pageController = PageController();
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    _pageController.jumpToPage(index);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          /// PageView
          PageView(
            controller: _pageController,
            physics: const NeverScrollableScrollPhysics(),
            children: [HomePage(), HomePage(), LibraryPage(), HomePage(), HomePage()],
          ),


          /// Custom Bottom Navigation Bar
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Theme.of(context).scaffoldBackgroundColor.withAlpha(185),
                    Theme.of(context).scaffoldBackgroundColor,
                  ],
                ),
              ),
              child: SafeArea(
                top: false,
                child: Row(
                  children: [
                    BottomBarItem(
                      icon: Icons.home,
                      title: 'Home',
                      selected: _selectedIndex == 0,
                      onTap: () => _onItemTapped(0),
                    ),
                    BottomBarItem(
                      icon: CupertinoIcons.search,
                      title: 'Search',
                      selected: _selectedIndex == 1,
                      onTap: () => _onItemTapped(1),
                    ),
                    BottomBarItem(
                      icon: CupertinoIcons.list_bullet_below_rectangle,
                      title: 'Your Library',
                      selected: _selectedIndex == 2,
                      onTap: () => _onItemTapped(2),
                    ),
                    BottomBarItem(
                      icon: CupertinoIcons.circle_bottomthird_split,
                      title: 'Premium',
                      selected: _selectedIndex == 3,
                      onTap: () => _onItemTapped(3),
                    ),
                    BottomBarItem(
                      icon: CupertinoIcons.add,
                      title: 'Create',
                      selected: _selectedIndex == 4,
                      onTap: () => _onItemTapped(4),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
