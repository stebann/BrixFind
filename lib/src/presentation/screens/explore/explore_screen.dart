import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:findhome/src/presentation/providers/data_providers.dart';

import 'components/custom_body.dart';

import 'components/custom_header.dart';

class ExploreScreen extends ConsumerWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final properties = [
      ...ref.watch(recommendedPropertiesProvider),
      ...ref.watch(nearbyPropertiesProvider),
      ...ref.watch(popularPropertiesProvider),
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: CustomScrollView(
        slivers: [
          const CustomHeader(),
          CustomBody(properties: properties),
          const SliverPadding(padding: EdgeInsets.only(bottom: 20)),
        ],
      ),
    );
  }
}
