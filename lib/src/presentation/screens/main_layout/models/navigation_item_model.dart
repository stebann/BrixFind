import 'package:flutter/material.dart';

class NavigationItemModel {
  final String label;
  final IconData icon;
  final IconData activeIcon;

  const NavigationItemModel({
    required this.label,
    required this.icon,
    required this.activeIcon,
  });
}
