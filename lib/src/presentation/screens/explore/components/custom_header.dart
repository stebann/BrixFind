import 'package:findhome/src/config/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'custom_filter_chip.dart';

class CustomHeader extends StatelessWidget {
  const CustomHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          Text(
            'Explore Properties',
            style: GoogleFonts.chakraPetch(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: AppColors.textColor,
            ),
          ),
          const SizedBox(height: 16),
          // Filtros
          const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                CustomFilterChip(
                  icon: Icons.sort,
                  label: 'Sort',
                  isSelected: true,
                ),
                CustomFilterChip(
                  icon: Icons.attach_money,
                  label: 'Price Range',
                ),
                CustomFilterChip(
                  icon: Icons.house_outlined,
                  label: 'Property Type',
                ),
                CustomFilterChip(
                  icon: Icons.location_on_outlined,
                  label: 'Location',
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
