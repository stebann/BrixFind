import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:findhome/src/config/theme/app_colors.dart';

class WishlistHeader extends StatelessWidget {
  const WishlistHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20),
        Text(
          'Saved Properties',
          style: GoogleFonts.chakraPetch(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: AppColors.textColor,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          'Properties you have liked',
          style: GoogleFonts.chakraPetch(fontSize: 14, color: Colors.grey),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
