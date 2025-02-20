import 'package:flutter/material.dart';
import 'package:findhome/src/presentation/screens/home/models/category_model.dart';
import 'package:findhome/src/presentation/screens/home/models/property_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_providers.g.dart';

enum PropertyCategory {
  house(
    icon: FontAwesomeIcons.houseChimney,
    label: 'House',
    color: Color(0xFF2C5282),
  ),
  apartment(
    icon: FontAwesomeIcons.solidBuilding,
    label: 'Apartment',
    color: Color(0xFF298681),
  ),
  townhouse(
    icon: FontAwesomeIcons.city,
    label: 'Townhouse',
    color: Color(0xFF6B7280),
  ),
  warehouse(
    icon: FontAwesomeIcons.warehouse,
    label: 'Warehouse',
    color: Color(0xFF927560),
  ),
  emptyLand(
    icon: FontAwesomeIcons.treeCity,
    label: 'Empty Land',
    color: Color(0xFF558B2F),
  );

  final IconData icon;
  final String label;
  final Color color;

  const PropertyCategory({
    required this.icon,
    required this.label,
    required this.color,
  });
}

@riverpod
List<CategoryModel> categoryTypes(Ref ref) {
  return PropertyCategory.values
      .map(
        (category) => CategoryModel(
          icon: category.icon,
          label: category.label,
          color: category.color,
        ),
      )
      .toList();
}

@riverpod
List<PropertyModel> recommendedProperties(Ref ref) {
  return [
    PropertyModel(
      images: [
        'assets/properties/foto-1-house.jpeg',
        'assets/properties/foto-1-house.jpeg',
        'assets/properties/foto-1-house.jpeg',
      ],
      imageUrl: 'assets/properties/foto-1-house.jpeg',
      title: 'Modern Villa House',
      rating: 4.5,
      location: 'Beverly Hills, CA',
      beds: 4,
      baths: 3,
      price: 540000,
      categoryIcon: PropertyCategory.house.icon,
      category: PropertyCategory.house.label,
    ),
    PropertyModel(
      images: [
        'assets/properties/foto-2-house.jpeg',
        'assets/properties/foto-2-house.jpeg',
        'assets/properties/foto-2-house.jpeg',
      ],
      imageUrl: 'assets/properties/foto-2-house.jpeg',
      title: 'Urban Living Space',
      rating: 4.8,
      location: 'Miami Beach, FL',
      beds: 3,
      baths: 2,
      price: 320000,
      categoryIcon: PropertyCategory.apartment.icon,
      category: PropertyCategory.apartment.label,
    ),
    PropertyModel(
      images: [
        'assets/properties/foto-3-house.jpeg',
        'assets/properties/foto-3-house.jpeg',
        'assets/properties/foto-3-house.jpeg',
      ],
      imageUrl: 'assets/properties/foto-3-house.jpeg',
      title: 'Downtown Complex',
      rating: 4.9,
      location: 'Palm Springs, CA',
      beds: 5,
      baths: 4,
      price: 840000,
      categoryIcon: PropertyCategory.townhouse.icon,
      category: PropertyCategory.townhouse.label,
    ),
  ];
}

@riverpod
List<PropertyModel> nearbyProperties(Ref ref) {
  return [
    PropertyModel(
      images: [
        'assets/properties/foto-4-house.jpeg',
        'assets/properties/foto-4-house.jpeg',
        'assets/properties/foto-4-house.jpeg',
      ],
      imageUrl: 'assets/properties/foto-4-house.jpeg',
      title: 'Sky View Apartment',
      rating: 4.3,
      location: 'Downtown LA, CA',
      beds: 2,
      baths: 2,
      price: 420000,
      categoryIcon: PropertyCategory.apartment.icon,
      category: PropertyCategory.apartment.label,
    ),
    PropertyModel(
      images: [
        'assets/properties/foto-5-house.jpeg',
        'assets/properties/foto-5-house.jpeg',
        'assets/properties/foto-5-house.jpeg',
      ],
      imageUrl: 'assets/properties/foto-5-house.jpeg',
      title: 'Family House',
      rating: 4.5,
      location: 'Santa Monica, CA',
      beds: 4,
      baths: 3,
      price: 680000,
      categoryIcon: PropertyCategory.house.icon,
      category: PropertyCategory.house.label,
    ),
    PropertyModel(
      images: [
        'assets/properties/foto-6-house.jpeg',
        'assets/properties/foto-6-house.jpeg',
        'assets/properties/foto-6-house.jpeg',
      ],
      imageUrl: 'assets/properties/foto-6-house.jpeg',
      title: 'Industrial Space',
      rating: 4.8,
      location: 'Malibu, CA',
      beds: 0,
      baths: 2,
      price: 920000,
      categoryIcon: PropertyCategory.warehouse.icon,
      category: PropertyCategory.warehouse.label,
    ),
  ];
}

@riverpod
List<PropertyModel> popularProperties(Ref ref) {
  return [
    PropertyModel(
      images: [
        'assets/properties/foto-7-house.jpeg',
        'assets/properties/foto-7-house.jpeg',
        'assets/properties/foto-7-house.jpeg',
      ],
      imageUrl: 'assets/properties/foto-7-house.jpeg',
      title: 'Modern Townhouse',
      rating: 4.9,
      location: 'Manhattan, NY',
      beds: 4,
      baths: 3,
      price: 1250000,
      categoryIcon: PropertyCategory.townhouse.icon,
      category: PropertyCategory.townhouse.label,
    ),
    PropertyModel(
      images: [
        'assets/properties/foto-8-house.jpeg',
        'assets/properties/foto-8-house.jpeg',
        'assets/properties/foto-8-house.jpeg',
      ],
      imageUrl: 'assets/properties/foto-8-house.jpeg',
      title: 'Development Land',
      rating: 4.8,
      location: 'Chicago, IL',
      beds: 0,
      baths: 0,
      price: 890000,
      categoryIcon: PropertyCategory.emptyLand.icon,
      category: PropertyCategory.emptyLand.label,
    ),
  ];
}
