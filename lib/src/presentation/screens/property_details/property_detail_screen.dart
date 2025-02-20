import 'package:flutter/material.dart';
import 'package:findhome/src/presentation/screens/home/models/property_model.dart';

import 'components/property_image_carousel';

class PropertyDetailsScreen extends StatelessWidget {
  final PropertyModel property;

  const PropertyDetailsScreen({super.key, required this.property});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Column(children: [PropertyImageCarousel(images: property.images)]),
    );
  }
}
