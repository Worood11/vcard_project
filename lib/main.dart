import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:vcard_project/pages/home_page.dart';
import 'package:vcard_project/pages/scan_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      routerConfig: _router,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }

  final _router = GoRouter(
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        name: HomePage.routeName,
        path: HomePage.routeName,
        builder: (context, state) => const HomePage(),
        routes: [
          GoRoute(
            name: ScanPage.routeName,
            path: ScanPage.routeName,
            builder: (context, state) => const ScanPage(),
          ),
        ],
      ),
    ],
  );
}
