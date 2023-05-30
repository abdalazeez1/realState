import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:realstate/feature/profile/view/profile_screen.dart';

import '../../app.dart';

class BasePage extends StatefulWidget {
   const BasePage({Key? key}) : super(key: key);
   static const path = '/base';
   static const name = 'base';

   static Widget pageBuilder(BuildContext context, GoRouterState state) {
     return const BasePage();
   }
    static final List<Widget> _widgetOptions = <Widget>[
      const MyHomePage(),
      const Text('Search Page'),
      const Text('Favourite Page'),
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
        appBar:_selectedIndex == 3 ? null:  AppBar(
          title: const Text('Bottom Navigation Bar Demo'),
        ),
        body: Center(
          child: BasePage._widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
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
