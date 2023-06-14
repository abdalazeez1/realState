import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:realstate/feature/home/view/home_screen.dart';
import 'package:realstate/feature/profile/view/profile_screen.dart';
import 'package:realstate/feature/search/search/search_screen.dart';

import '../../add_ad/view/add_ad_screen.dart';
import '../../app.dart';
import '../../favorite/view/favorite_screen.dart';

class BasePage extends StatefulWidget {
  const BasePage({Key? key}) : super(key: key);
  static const path = '/base';
  static const name = 'base';

  static Widget pageBuilder(BuildContext context, GoRouterState state) {
    return const BasePage();
  }

  static final List<Widget> _widgetOptions = <Widget>[
    const HomeScreen(),
    SearchScreen(),
    const FavoriteScreen(),
    ProfileScreen(),
  ];

  @override
  State<BasePage> createState() => _BasePageState();
}

class _BasePageState extends State<BasePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: _selectedIndex == 3 || _selectedIndex == 1
          ? null
          : AppBar(
              title: const Text('Bottom Navigation Bar Demo'),
            ),*/
      body: Center(
        child: BasePage._widgetOptions.elementAt(_selectedIndex),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            context.pushNamed(AddAdsScreen.name);
          },
          child: Icon(Icons.add, color: Theme.of(context).colorScheme.primary)),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favourite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
      ),
    );
  }
}
