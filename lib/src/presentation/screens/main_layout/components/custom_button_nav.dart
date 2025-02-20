import 'package:findhome/src/config/theme/app_colors.dart';
import 'package:findhome/src/presentation/screens/main_layout/providers/main_layout_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomBottomNav extends ConsumerWidget {
  final StatefulNavigationShell navigationShell;

  const CustomBottomNav({super.key, required this.navigationShell});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final navigationItems = ref.watch(navigationItemsProvider);

    return NavigationBar(
      selectedIndex: navigationShell.currentIndex,
      indicatorColor: const Color.fromRGBO(0, 0, 0, 0.1),
      labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
      onDestinationSelected: navigationShell.goBranch,
      labelTextStyle: WidgetStateProperty.all(
        GoogleFonts.chakraPetch(
          fontSize: 12,
          fontWeight: FontWeight.w600,
          color: AppColors.textColor,
        ),
      ),
      backgroundColor: Colors.white,
      destinations:
          navigationItems.map((item) {
            return NavigationDestination(
              icon: Icon(item.icon, size: 25),
              selectedIcon: Icon(item.activeIcon, size: 25),
              label: item.label,
            );
          }).toList(),
    );
  }
}
