import 'package:findhome/src/config/theme/app_colors.dart';
import 'package:findhome/src/models/property_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryRaiting extends StatelessWidget {
  const CategoryRaiting({super.key, required this.property});

  final PropertyModel property;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 217, 237, 242),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              Icon(
                property.categoryIcon,
                size: 12,
                color: const Color(0xFF31A6A0),
              ),
              const SizedBox(width: 6),
              Text(
                property.category,
                style: GoogleFonts.chakraPetch(
                  fontSize: 12,
                  color: const Color(0xFF31A6A0),
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
        Row(
          children: [
            Icon(Icons.star, color: Colors.yellow.shade700, size: 20),
            const SizedBox(width: 4),
            Text(
              property.rating.toString(),
              style: GoogleFonts.chakraPetch(
                fontSize: 14,
                color: AppColors.textColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
