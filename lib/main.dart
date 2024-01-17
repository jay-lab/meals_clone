import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals_clone/screens/meal_detail.dart';
import 'package:meals_clone/screens/meal_detail2.dart';
import 'package:meals_clone/screens/tabs.dart';

final theme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
    brightness: Brightness.light,
    seedColor: const Color.fromARGB(255, 0, 50, 255),
  ),
  textTheme: GoogleFonts.latoTextTheme(),
);

void main() {
  runApp(
    ProviderScope(
      child: App(),
    ),
  );
}

class App extends StatelessWidget {
  App({super.key});

  final GoRouter _router = GoRouter(
    routes: <GoRoute>[
      GoRoute(path: "/", builder: ((context, state)=> const TabScreen())),
      GoRoute(path: "/detail", builder: ((context, state)=> const MealDetailsScreen())),
      GoRoute(path: "/detail2", builder: ((context, state)=> const MealDetailsScreen2()))
    ],
    debugLogDiagnostics: true,
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      // debugShowCheckedModeBanner: false,
      theme: theme,
      // home: const TabScreen(),
    );
  }
}
