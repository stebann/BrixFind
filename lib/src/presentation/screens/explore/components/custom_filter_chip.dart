import 'package:findhome/src/config/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomFilterChip extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool isSelected;

  const CustomFilterChip({
    super.key,
    required this.icon,
    required this.label,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 12),
      child: FilterChip(
        selected: isSelected,
        showCheckmark: false,
        avatar: Icon(
          icon,
          size: 20,
          color: isSelected ? Colors.white : const Color(0xFF31A6A0),
        ),
        label: Text(
          label,
          style: GoogleFonts.chakraPetch(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: isSelected ? Colors.white : AppColors.textColor,
          ),
        ),
        backgroundColor: Colors.white,
        selectedColor: const Color(0xFF31A6A0),
        side: BorderSide(
          color: isSelected ? Colors.transparent : Colors.grey.shade300,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 12),
        onSelected: (bool selected) {
          // Aquí iría la lógica del filtro
        },
      ),
    );
  }
}
