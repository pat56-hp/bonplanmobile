import 'package:bonplan/constant.dart';
import 'package:bonplan/screens/Explore.dart';
import 'package:bonplan/screens/Favoris.dart';
import 'package:bonplan/screens/ListPage.dart';
import 'package:bonplan/screens/Profile.dart';
import 'package:bonplan/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    List<PersistentBottomNavBarItem> _navBarItems() {
      return [
        PersistentBottomNavBarItem(
          icon: const Icon(Icons.home),
          title: "Accueil",
          activeColorPrimary: appTextActiveColor,
          inactiveColorPrimary: Colors.white,
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(Icons.search),
          title: ("Explorer"),
          activeColorPrimary: appTextActiveColor,
          inactiveColorPrimary: Colors.white,
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(Icons.favorite_border),
          title: ("Favoris"),
          activeColorPrimary: appTextActiveColor,
          inactiveColorPrimary: Colors.white,
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(Icons.person),
          title: ("Profil"),
          activeColorPrimary: appTextActiveColor,
          inactiveColorPrimary: Colors.white,
        ),
      ];
    }

    PersistentTabController controller =
        PersistentTabController(initialIndex: 0);

    List<Widget> _screens() {
      return [
        Home(controller: controller),
        Explore(controller: controller),
        Favoris(controller: controller),
        Profile(controller: controller)
      ];
    }

    PersistentTabView _buildScreens() {
      return PersistentTabView(context,
          controller: controller,
          screens: _screens(),
          items: _navBarItems(),
          confineInSafeArea: true,
          backgroundColor: bottomBarColor,
          navBarStyle: NavBarStyle.style3);
    }

    return MaterialApp(
      title: 'Bon plan',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: appPrimaryColor),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: appPrimaryColor,
        bottomNavigationBar: _buildScreens(),
      ),
    );
  }
}
