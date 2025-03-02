import 'package:findhome/src/config/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CheckboxOption extends StatelessWidget {
  final String title;
  final String? subtitle;
  final bool value;

  const CheckboxOption({super.key, 
    required this.title,
    this.subtitle,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: Text(title, style: GoogleFonts.chakraPetch()),
      subtitle:
          subtitle != null
              ? Text(
                subtitle!,
                style: GoogleFonts.chakraPetch(
                  fontSize: 12,
                  color: Colors.grey,
                ),
              )
              : null,
      value: value,
      activeColor: AppColors.textColor,
      onChanged: (bool? value) {
        // Implement checkbox logic
      },
    );
  }
}
