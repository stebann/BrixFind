import 'package:flutter/material.dart';
import 'package:findhome/src/presentation/screens/property_detail/models/facilitie_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'details_providers.g.dart';

@riverpod
List<FacilityModel> facilities(Ref ref) {
  return [
    const FacilityModel(
      name: 'Bedrooms',
      icon: Icons.bed_outlined,
      quantity: '3',
    ),
    const FacilityModel(
      name: 'Bathrooms',
      icon: Icons.bathroom_outlined,
      quantity: '2',
    ),
    const FacilityModel(
      name: 'Parking',
      icon: Icons.garage_outlined,
      quantity: '1',
    ),
    const FacilityModel(
      name: 'Kitchen',
      icon: Icons.kitchen_outlined,
      quantity: '1',
    ),
    const FacilityModel(
      name: 'Square Feet',
      icon: Icons.square_foot_outlined,
      quantity: '1,200',
    ),
  ];
}
