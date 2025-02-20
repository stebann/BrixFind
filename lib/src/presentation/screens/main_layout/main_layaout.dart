import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'components/custom_button_nav.dart';
import 'components/custom_main_bar.dart';

class MainLayout extends StatelessWidget {
  final StatefulNavigationShell navigationShell;

  const MainLayout({required this.navigationShell, Key? key})
    : super(key: key ?? const ValueKey<String>('ScaffoldWithNavBar'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomMainBar(),
      drawer: const Drawer(),
      body: navigationShell,
      bottomNavigationBar: CustomBottomNav(navigationShell: navigationShell),
    );
  }
}
