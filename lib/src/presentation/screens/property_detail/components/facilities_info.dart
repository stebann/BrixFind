import 'package:findhome/src/config/theme/app_colors.dart';
import 'package:findhome/src/presentation/screens/property_detail/models/facilitie_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FacilitiesInfo extends StatelessWidget {
  const FacilitiesInfo({super.key, required this.facilities});

  final List<FacilityModel> facilities;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Facilities',
              style: GoogleFonts.chakraPetch(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            TextButton(
              onPressed: () {},
              style: ButtonStyle(
                padding: WidgetStateProperty.all(EdgeInsets.zero),
              ),
              child: const Text(
                'See All',
                style: TextStyle(color: Color(0xff4CA09B)),
              ),
            ),
          ],
        ),

        SizedBox(
          height: 70,
          width: double.infinity,
          child: ListView.separated(
            itemCount: facilities.length,
            separatorBuilder: (context, index) => const SizedBox(width: 8),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              final facility = facilities[index];
              return Container(
                constraints: const BoxConstraints(minWidth: 100),
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.grey.shade300),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(
                          facility.icon,
                          color: AppColors.textColor,
                          size: 22,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          facility.quantity,
                          style: GoogleFonts.chakraPetch(
                            fontSize: 14,
                            color: AppColors.textColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 4),

                    Text(
                      facility.name,
                      style: GoogleFonts.chakraPetch(
                        fontSize: 12,
                        color: AppColors.textColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
