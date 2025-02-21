import 'package:findhome/src/config/helpers/currency_format.dart';
import 'package:findhome/src/config/router/route_names.dart';
import 'package:flutter/material.dart';
import 'package:findhome/src/config/theme/app_colors.dart';
import 'package:findhome/src/models/property_model.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class PropertySection extends StatelessWidget {
  final String title;
  final VoidCallback? onSeeAll;
  final List<PropertyModel> properties;

  const PropertySection({
    super.key,
    required this.title,
    required this.properties,
    this.onSeeAll,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: GoogleFonts.chakraPetch(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextButton(
                onPressed: onSeeAll,
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
        ),
        const SizedBox(height: 8),
        SizedBox(
          height: 280,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            itemCount: properties.length,
            itemBuilder: (context, index) {
              final property = properties[index];

              return PropertyCard(property: property);
            },
          ),
        ),
      ],
    );
  }
}

class PropertyCard extends HookWidget {
  final PropertyModel property;

  const PropertyCard({super.key, required this.property});

  @override
  Widget build(BuildContext context) {
    final isFavorite = useState(false);
    return GestureDetector(
      onTap:
          () => context.pushNamed(RouteNames.propertyDetails, extra: property),
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        width: 320,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _PropertyImage(
              property: property,
              isFavorite: isFavorite.value,
              onFavoritePressed: () => isFavorite.value = !isFavorite.value,
            ),
            _PropertyInfo(property: property),
          ],
        ),
      ),
    );
  }
}

class _PropertyImage extends StatelessWidget {
  final PropertyModel property;
  final bool isFavorite;
  final VoidCallback onFavoritePressed;

  const _PropertyImage({
    required this.property,
    required this.isFavorite,
    required this.onFavoritePressed,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          child: Image.asset(
            property.imageUrl,
            height: 180,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        _CategoryBadge(
          category: property.category,
          icon: property.categoryIcon,
        ),
        _FavoriteButton(isFavorite: isFavorite, onPressed: onFavoritePressed),
      ],
    );
  }
}

class _CategoryBadge extends StatelessWidget {
  final String category;
  final IconData icon;

  const _CategoryBadge({required this.category, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 12,
      left: 12,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Icon(icon, size: 12, color: const Color(0xFF31A6A0)),
            const SizedBox(width: 6),
            Text(
              category,
              style: GoogleFonts.chakraPetch(
                fontSize: 12,
                color: const Color(0xFF31A6A0),
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _FavoriteButton extends StatelessWidget {
  final bool isFavorite;
  final VoidCallback onPressed;

  const _FavoriteButton({required this.isFavorite, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 12,
      right: 12,
      child: Container(
        height: 32,
        width: 32,
        decoration: const BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Color(0x1A000000),
              blurRadius: 4,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: IconButton(
          padding: EdgeInsets.zero,
          onPressed: onPressed,
          icon: Icon(
            isFavorite ? Icons.favorite : Icons.favorite_border,
            size: 22,
            color: isFavorite ? Colors.red : Colors.black54,
          ),
        ),
      ),
    );
  }
}

class _PropertyInfo extends StatelessWidget {
  final PropertyModel property;

  const _PropertyInfo({required this.property});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildTitleAndRating(),
          _buildLocation(),
          _buildDetailsAndPrice(),
        ],
      ),
    );
  }

  Widget _buildTitleAndRating() {
    return Row(
      children: [
        Expanded(
          child: Text(
            property.title,
            style: GoogleFonts.chakraPetch(
              fontSize: 16,
              color: AppColors.textColor,
              fontWeight: FontWeight.bold,
            ),
            overflow: TextOverflow.ellipsis,
          ),
        ),
        Row(
          children: [
            Icon(Icons.star, color: Colors.yellow.shade700, size: 16),
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

  Widget _buildLocation() {
    return Row(
      children: [
        const Icon(Icons.location_on, color: Colors.grey, size: 18),
        Expanded(
          child: Text(
            property.location,
            style: GoogleFonts.chakraPetch(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: AppColors.textColor,
            ),
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }

  Widget _buildDetailsAndPrice() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            const Icon(Icons.bed, color: Colors.grey, size: 18),
            const SizedBox(width: 4),
            Text(
              property.beds.toString(),
              style: GoogleFonts.chakraPetch(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: AppColors.textColor,
              ),
            ),
            const SizedBox(width: 16),
            const Icon(Icons.bathtub, color: Colors.grey, size: 18),
            const SizedBox(width: 4),
            Text(
              property.baths.toString(),
              style: GoogleFonts.chakraPetch(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: AppColors.textColor,
              ),
            ),
          ],
        ),
        Text(
          '\$${CurrencyFormat.formatPrice(property.price)}',
          style: GoogleFonts.chakraPetch(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: AppColors.textColor,
          ),
        ),
      ],
    );
  }
}
