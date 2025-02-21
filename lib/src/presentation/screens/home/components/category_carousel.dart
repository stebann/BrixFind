import 'package:findhome/src/models/category_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryCarousel extends StatelessWidget {
  final List<CategoryModel> categories;

  const CategoryCarousel({super.key, required this.categories});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children:
            categories
                .map((category) => _CategoryItem(category: category))
                .toList(),
      ),
    );
  }
}

class _CategoryItem extends StatelessWidget {
  final CategoryModel category;

  const _CategoryItem({required this.category});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 65,
          height: 65,
          decoration: BoxDecoration(
            color: Colors.grey[200],
            shape: BoxShape.circle,
          ),
          child: Icon(category.icon, color: category.color, size: 25),
        ),
        const SizedBox(height: 4),
        Text(
          category.label,
          style: GoogleFonts.chakraPetch(
            fontSize: 11,
            color: Colors.black54,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
