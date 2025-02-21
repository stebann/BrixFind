import 'package:findhome/src/config/theme/app_colors.dart';
import 'package:findhome/src/models/property_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PropertyDetail extends StatelessWidget {
  const PropertyDetail({super.key, required this.property});

  final PropertyModel property;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 6,
          children: [
            Text(
              'Description',
              style: GoogleFonts.chakraPetch(
                fontSize: 16,
                color: AppColors.textColor,
                fontWeight: FontWeight.bold,
              ),
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
              style: GoogleFonts.chakraPetch(
                fontSize: 14,
                color: AppColors.textColor,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),

        const SizedBox(height: 20),

        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Colors.grey.shade300),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    maxRadius: 25,
                    backgroundColor: Colors.grey.shade300,
                    child: Icon(Icons.person, color: Colors.grey.shade600),
                  ),
                  const SizedBox(width: 8),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Agent Name',
                        style: GoogleFonts.chakraPetch(
                          fontSize: 14,
                          color: AppColors.textColor,
                          fontWeight: FontWeight.bold,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                      Text(
                        'Property Agent',
                        style: GoogleFonts.chakraPetch(
                          fontSize: 12,
                          color: AppColors.textColor,
                          fontWeight: FontWeight.w500,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                    ],
                  ),
                ],
              ),

              const SizedBox(width: 4),

              Row(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      color: Color(0xFF31A6A0),
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.message),
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    decoration: const BoxDecoration(
                      color: Color(0xFF31A6A0),
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.phone),
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),

        const SizedBox(height: 10),

        if (property.additionalInfo.isNotEmpty)
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.grey.shade300),
            ),
            child: _InfoRow(additionalInfo: property.additionalInfo),
          ),
      ],
    );
  }
}

class _InfoRow extends StatelessWidget {
  final Map<String, String> additionalInfo;

  const _InfoRow({required this.additionalInfo});

  @override
  Widget build(BuildContext context) {
    if (additionalInfo.isEmpty) return const SizedBox.shrink();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Additional Information',
          style: GoogleFonts.chakraPetch(
            fontSize: 16,
            color: AppColors.textColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 12),
        ...additionalInfo.entries.map(
          (entry) => Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Row(
              children: [
                const Icon(Icons.circle, size: 8, color: AppColors.textColor),
                const SizedBox(width: 8),
                Text(
                  '${entry.key}: ',
                  style: GoogleFonts.chakraPetch(
                    fontSize: 14,
                    color: AppColors.textColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  entry.value,
                  style: GoogleFonts.chakraPetch(
                    fontSize: 14,
                    color: AppColors.textColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
