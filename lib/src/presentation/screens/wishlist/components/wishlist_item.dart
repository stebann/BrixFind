import 'package:findhome/src/models/property_model.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:findhome/src/config/helpers/currency_format.dart';
import 'package:findhome/src/config/theme/app_colors.dart';
import 'package:findhome/src/config/router/route_names.dart';

class WishlistItem extends StatelessWidget {
  final PropertyModel property;

  const WishlistItem({super.key, required this.property});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: GestureDetector(
        onTap:
            () =>
                context.pushNamed(RouteNames.propertyDetails, extra: property),
        child: SizedBox(
          height: 140,
          child: Card(
            color: Colors.white,
            elevation: 4,
            margin: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
              side: BorderSide(color: Colors.grey.shade300, width: 1),
            ),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.horizontal(
                    left: Radius.circular(12),
                  ),
                  child: Image.asset(
                    property.imageUrl,
                    width: 140,
                    height: 140,
                    fit: BoxFit.cover,
                  ),
                ),
                _buildPropertyInfo(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildPropertyInfo() {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [_buildCategoryRow(), _buildPriceAndDetails()],
        ),
      ),
    );
  }

  Widget _buildCategoryRow() {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
          decoration: BoxDecoration(
            color: Colors.grey.shade300,
            border: Border.all(color: Colors.grey.shade500),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              FaIcon(
                property.categoryIcon,
                size: 10,
                color: AppColors.textColor,
              ),
              const SizedBox(width: 3),
              Text(
                property.category,
                style: GoogleFonts.chakraPetch(
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                  color: AppColors.textColor,
                ),
              ),
            ],
          ),
        ),
        const Spacer(),
        IconButton(
          icon: const Icon(Icons.favorite, color: Colors.red, size: 20),
          onPressed: () {},
        ),
      ],
    );
  }

  Widget _buildPriceAndDetails() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '\$${CurrencyFormat.formatPrice(property.price)}',
          style: GoogleFonts.chakraPetch(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.blue,
          ),
        ),
        Text(
          property.title,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: GoogleFonts.chakraPetch(
            fontSize: 13,
            fontWeight: FontWeight.w500,
          ),
        ),
        Row(
          children: [
            const Icon(Icons.location_on, size: 12, color: Colors.grey),
            const SizedBox(width: 2),
            Expanded(
              child: Text(
                property.location,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: GoogleFonts.chakraPetch(
                  fontSize: 11,
                  color: Colors.grey.shade800,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
