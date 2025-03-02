// ignore_for_file: use_key_in_widget_constructors

import 'package:findhome/src/config/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final Widget? trailing;

  const ProfileItem({
    required this.icon,
    required this.title,
    required this.subtitle,
    this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: AppColors.textColor),
      title: Text(
        title,
        style: GoogleFonts.chakraPetch(fontWeight: FontWeight.w500),
      ),
      subtitle: Text(
        subtitle,
        style: GoogleFonts.chakraPetch(fontSize: 12, color: Colors.grey),
      ),
      trailing: trailing,
      onTap: () {},
    );
  }
}
