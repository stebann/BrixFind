import 'package:flutter/material.dart';
import 'providers/details_providers.dart';
import 'package:findhome/src/models/property_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'components/category_raiting.dart';
import 'components/facilities_info.dart';
import 'components/title_address.dart';
import 'components/price_bottom_bar.dart';
import 'components/property_detail.dart';
import 'components/property_image_carousel.dart';

class PropertyDetailsScreen extends ConsumerWidget {
  final PropertyModel property;

  const PropertyDetailsScreen({super.key, required this.property});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final facilities = ref.watch(facilitiesProvider);

    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      bottomNavigationBar: PriceBottomBar(price: property.price),
      body: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: Column(
          children: [
            PropertyImageCarousel(images: property.images),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  CategoryRaiting(property: property),

                  const SizedBox(height: 10),

                  TitleAddress(property: property),

                  const SizedBox(height: 4),

                  FacilitiesInfo(facilities: facilities),

                  const SizedBox(height: 8),

                  PropertyDetail(property: property),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
