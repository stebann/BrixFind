import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:findhome/src/presentation/providers/providers.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomBottomNav extends ConsumerWidget {
  const CustomBottomNav({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentIndex = ref.watch(navigationControllerProvider);

    final sizeIcon = 25.0;

    final homeIcon = Icon(Icons.home_filled, size: sizeIcon);

    final exploreIcon = Icon(Icons.explore_outlined, size: sizeIcon);

    final wishlistIcon = Icon(Icons.favorite_outline, size: sizeIcon);

    final messageIcon = Icon(Icons.message_outlined, size: sizeIcon);

    final profileIcon = Icon(Icons.person_outline, size: sizeIcon);

    return BottomNavigationBar(
      currentIndex: currentIndex,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.grey.shade600,
      selectedLabelStyle: GoogleFonts.chakraPetch(
        fontWeight: FontWeight.w600,
        fontSize: 13,
      ),
      unselectedLabelStyle: GoogleFonts.chakraPetch(
        fontWeight: FontWeight.w400,
        fontSize: 11,
      ),
      onTap:
          (index) =>
              ref.read(navigationControllerProvider.notifier).setIndex(index),
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          icon: homeIcon,
          activeIcon: homeIcon,
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: exploreIcon,
          activeIcon: exploreIcon,
          label: 'Explore',
        ),
        BottomNavigationBarItem(
          icon: wishlistIcon,
          activeIcon: wishlistIcon,
          label: 'Wishlist',
        ),
        BottomNavigationBarItem(
          icon: messageIcon,
          activeIcon: messageIcon,
          label: 'Message',
        ),
        BottomNavigationBarItem(
          icon: profileIcon,
          activeIcon: profileIcon,
          label: 'Profile',
        ),
      ],
    );
  }
}
