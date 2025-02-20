import 'package:flutter/material.dart';
import 'package:findhome/src/presentation/screens/main_layout/models/navigation_item_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'main_layout_providers.g.dart';

@riverpod
List<NavigationItemModel> navigationItems(Ref ref) {
  return [
    const NavigationItemModel(
      label: 'Home',
      icon: Icons.home_outlined,
      activeIcon: Icons.home_filled,
    ),
    const NavigationItemModel(
      label: 'Explore',
      icon: Icons.explore_outlined,
      activeIcon: Icons.explore,
    ),
    const NavigationItemModel(
      label: 'Wishlist',
      icon: Icons.favorite_outline,
      activeIcon: Icons.favorite,
    ),
    const NavigationItemModel(
      label: 'Message',
      icon: Icons.message_outlined,
      activeIcon: Icons.message,
    ),
    const NavigationItemModel(
      label: 'Profile',
      icon: Icons.person_outline,
      activeIcon: Icons.person,
    ),
  ];
}
