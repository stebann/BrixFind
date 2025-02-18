import 'package:flutter/material.dart';
import 'package:findhome/src/presentation/providers/providers.dart';
import 'package:findhome/src/presentation/screens/screens.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'components/custom_button_nav.dart';
import 'components/custom_main_bar.dart';

class MainScreen extends ConsumerWidget {
  MainScreen({super.key});

  final List<Widget> _screens = [
    HomeScreen(),
    ExploreScreen(),
    WishlistScreen(),
    MessageScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentIndex = ref.watch(navigationControllerProvider);

    return Scaffold(
      appBar: const CustomMainBar(),
      drawer: const Drawer(),
      body: _screens[currentIndex],
      bottomNavigationBar: const CustomBottomNav(),
    );
  }
}
