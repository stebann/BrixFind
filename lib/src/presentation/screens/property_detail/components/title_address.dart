import 'package:findhome/src/config/theme/app_colors.dart';
import 'package:findhome/src/models/property_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TitleAddress extends StatelessWidget {
  const TitleAddress({super.key, required this.property});

  final PropertyModel property;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          property.title,
          style: GoogleFonts.chakraPetch(
            fontSize: 18,
            color: AppColors.textColor,
            fontWeight: FontWeight.bold,
          ),
          overflow: TextOverflow.ellipsis,
        ),
        Row(
          children: [
            const Icon(Icons.location_on, color: AppColors.textColor, size: 16),
            const SizedBox(width: 4),
            Expanded(
              child: Text(
                property.location,
                style: GoogleFonts.chakraPetch(
                  fontSize: 14,
                  color: AppColors.textColor,
                  fontWeight: FontWeight.w500,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
