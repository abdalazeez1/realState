import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:realstate/common/network/exceptions/exceptions.dart';
import 'package:realstate/feature/home/presentation/ui/screen/home_screen.dart';
import 'package:realstate/feature/search/search/search_screen.dart';

import '../../add_ad/presentation/ui/screen/add_ad_screen.dart';
import '../../app.dart';
import '../../favorite/presentation/ui/screen/favorite_screen.dart';
import '../../profile/presentation/ui/screens/profile_screen.dart';

class BasePage extends StatefulWidget {
  const BasePage({Key? key}) : super(key: key);
  static const path = '/base';
  static const name = 'base';

  static Widget pageBuilder(BuildContext context, GoRouterState state) {
    return const BasePage();
  }

  static final List<Widget> _widgetOptions = <Widget>[
    const HomeScreen(),
    const SearchScreen(),
    const AddAdsScreen(),
    const FavoriteScreen(),
    const ProfileScreen(),
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
    return SafeArea(
      top: false,
      child: ClipRect(
        child: Scaffold(
          /*appBar: _selectedIndex == 3 || _selectedIndex == 1
              ? null
              : AppBar(
                  title: const Text('Bottom Navigation Bar Demo'),
                ),*/
          body: Center(
            child: BasePage._widgetOptions.elementAt(_selectedIndex),
          ),
          // floatingActionButton: FloatingActionButton(
          //     onPressed: () {
          //       context.pushNamed(AddAdsScreen.name);
          //     },
          //     child: Icon(Icons.add, color: Theme.of(context).colorScheme.primary)),
          // floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
          bottomNavigationBar: CurvedNavigationBar(
              color: context.colorScheme.primary,
            buttonBackgroundColor: context.colorScheme.inversePrimary,
            backgroundColor: context.colorScheme.onPrimary,
            height: 50.h,
            animationDuration: const Duration(milliseconds: 500),
            items: const [
              Icon(Icons.home),
              Icon(Icons.search),
              Icon(Icons.add),
              Icon(Icons.favorite),
              Icon(Icons.person),
            ],
            index: _selectedIndex,
             onTap: _onItemTapped,
          ),
          // bottomNavigationBar: BottomNavigationBar(
          //   type: BottomNavigationBarType.fixed,
          //   currentIndex: _selectedIndex,
          //   onTap: _onItemTapped,
          //   items: const <BottomNavigationBarItem>[
          //     BottomNavigationBarItem(
          //       icon: Icon(Icons.home),
          //       label: 'Home',
          //     ),
          //     BottomNavigationBarItem(
          //       icon: Icon(Icons.search),
          //       label: 'Search',
          //     ),
          //     BottomNavigationBarItem(
          //       icon: Icon(Icons.favorite),
          //       label: 'Favourite',
          //     ),
          //     BottomNavigationBarItem(
          //       icon: Icon(Icons.person),
          //       label: 'Profile',
          //     ),
          //   ],
          //   selectedItemColor: Colors.blue,
          //   unselectedItemColor: Colors.grey,
          //   showUnselectedLabels: true,
          // ),
        ),
      ),
    );
  }
}
