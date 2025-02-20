import 'package:flutter/material.dart';
import 'package:findhome/src/config/router/app_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() => runApp(ProviderScope(child: const MyApp()));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Find Home',
      debugShowCheckedModeBanner: false,
      routerConfig: router,
    );
  }
}
