import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class Explore extends StatelessWidget {
    final PersistentTabController controller;
    const Explore({required this.controller, super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Explorer'),
    );
  }
}
