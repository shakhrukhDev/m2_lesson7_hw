import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:m2_lesson8/screens/catalog/catalog_page.dart';
import 'package:m2_lesson8/screens/home/home_page.dart';
import 'package:m2_lesson8/screens/profile/profile_page.dart';
import 'package:m2_lesson8/screens/search/search_page.dart';
import 'package:m2_lesson8/utils/app_icons.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  BottomMenu _currentTab = BottomMenu.home;

  void _selectTab(BottomMenu tab) {
    setState(() {
      _currentTab = tab;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentTab.index,
        children: [HomePage(), CatalogPage(), SearchPage(), ProfilePage()],
      ),
      bottomNavigationBar: BottomNavigationBar(
        // type: BottomNavigationBarType.fixed,
        currentIndex: _currentTab.index,
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.blue,
        showSelectedLabels: false,
       // showUnselectedLabels: true,
        onTap: (index) {
          _selectTab(BottomMenu.values[index]);
        },
        items: [
          BottomNavigationBarItem(icon: SvgPicture.asset(AppIcons.homeIcon), label: "Home"),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(AppIcons.heartDrawerIcon), label: "Catalog"),
          BottomNavigationBarItem(icon: SvgPicture.asset(AppIcons.bagIcon), label: "Search"),
          BottomNavigationBarItem(icon: SvgPicture.asset(AppIcons.walletIcon), label: "Profile"),
        ],
      ),
    );
  }
}

enum BottomMenu { home, catalog, search, profile }
