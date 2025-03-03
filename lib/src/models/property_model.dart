import 'package:flutter/material.dart';

class PropertyModel {
  final String imageUrl;
  final List<String> images;
  final String title;
  final double rating;
  final String location;
  final int beds;
  final int baths;
  final double price;
  final IconData categoryIcon;
  final String category;
  final Map<String, String> additionalInfo;

  const PropertyModel({
    required this.images,
    required this.imageUrl,
    required this.title,
    required this.rating,
    required this.location,
    required this.beds,
    required this.baths,
    required this.price,
    required this.categoryIcon,
    required this.category,
    this.additionalInfo = const {},
  });
}
