import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:findhome/src/presentation/providers/home_providers.dart';

import 'components/category_carousel.dart';
import 'components/custom_search_field.dart';
import 'components/property_section.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final categories = ref.watch(categoryTypesProvider);
    final properties = ref.watch(recommendedPropertiesProvider);
    final nearbyProperties = ref.watch(nearbyPropertiesProvider);
    final popularProperties = ref.watch(popularPropertiesProvider);

    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
            child: CustomSearchField(onTapFilter: () {}),
          ),

          CategoryCarousel(categories: categories),

          SizedBox(height: 8),

          PropertySection(
            title: 'Recommended Property',
            properties: properties,
            onSeeAll: () {},
          ),

          SizedBox(height: 8),

          PropertySection(
            title: 'Nearby You',
            properties: nearbyProperties,
            onSeeAll: () {},
          ),

          SizedBox(height: 8),

          PropertySection(
            title: 'Most Popular',
            properties: popularProperties,
            onSeeAll: () {},
          ),
        ],
      ),
    );
  }
}
