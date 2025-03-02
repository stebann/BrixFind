import 'package:findhome/src/config/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class SocialLinks extends StatelessWidget {
  const SocialLinks({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const FaIcon(
              FontAwesomeIcons.github,
              size: 20,
              color: AppColors.textColor,
            ),
            const SizedBox(width: 8),
            Text(
              'github.com/stebann',
              style: GoogleFonts.chakraPetch(
                fontSize: 14,
                color: AppColors.textColor,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const FaIcon(
              FontAwesomeIcons.linkedin,
              size: 20,
              color: AppColors.textColor,
            ),
            const SizedBox(width: 8),
            Text(
              'linkedin.com/in/estebanrramirezm',
              style: GoogleFonts.chakraPetch(
                fontSize: 14,
                color: AppColors.textColor,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
