import 'route_names.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:findhome/src/models/property_model.dart';
import 'package:findhome/src/presentation/screens/screens.dart';

final GlobalKey<NavigatorState> _rootNavigationKey = GlobalKey<NavigatorState>(
  debugLabel: 'root',
);

final GoRouter router = GoRouter(
  initialLocation: '/home',
  navigatorKey: _rootNavigationKey,
  routes: [
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return MainLayout(navigationShell: navigationShell);
      },
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/home',
              name: RouteNames.home,
              builder: (context, state) => const HomeScreen(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/explore',
              name: RouteNames.explore,
              builder: (context, state) => const ExploreScreen(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/wishlist',
              name: RouteNames.wishlist,
              builder: (context, state) => const WishlistScreen(),
            ),
          ],
        ),
      ],
    ),

    GoRoute(
      path: '/property-details',
      name: RouteNames.propertyDetails,
      builder: (context, state) {
        final property = state.extra as PropertyModel;
        return PropertyDetailsScreen(property: property);
      },
    ),
    GoRoute(
      path: '/settings-property',
      name: RouteNames.propertySettings,
      builder: (context, state) {
        return const SettingScreen();
      },
    ),
    GoRoute(
      path: '/settings-user',
      name: RouteNames.userSettings,
      builder: (context, state) {
        return const ProfileScreen();
      },
    ),
    GoRoute(
      path: '/about',
      name: RouteNames.about,
      builder: (context, state) {
        return const AboutScreen();
      },
    ),
  ],
);
