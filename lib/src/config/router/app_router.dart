import 'package:go_router/go_router.dart';
import 'package:findhome/src/presentation/screens/main/main_screen.dart';
import 'route_names.dart';

class AppRouter {
  static final AppRouter _instance = AppRouter._internal();

  factory AppRouter() => _instance;

  AppRouter._internal();

  GoRouter get router => _router;

  final GoRouter _router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        name: RouteNames.main,
        builder: (context, state) => MainScreen(),
      ),
    ],
  );
}
