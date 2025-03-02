import 'package:findhome/src/presentation/providers/data_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'components/wishlist_header.dart';
import 'components/wishlist_item.dart';

class WishlistScreen extends ConsumerWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final properties = ref.watch(recommendedPropertiesProvider);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(child: WishlistHeader()),
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              final property = properties[index];
              return WishlistItem(property: property);
            }, childCount: properties.length),
          ),
        ],
      ),
    );
  }
}
