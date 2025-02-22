import 'package:beamer/beamer.dart';
import 'package:flute_quickboot/presentations/routing/main_routing.dart';
import 'package:fluteqboot/themes/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final mainRouteDelegate = BeamerDelegate(
    locationBuilder: (routeInfo, _) => MainRouteLocation(routeInfo),
  );

  @override
  Widget build(BuildContext context) {
    final m3Theme = M3Theme.create(
      brightness: View.of(context).platformDispatcher.platformBrightness,
      // brightness: Brightness.dark,
      contrast: M3ThemeContrast.high,
      textTheme: createTextTheme(context, 'Inter', 'Inter'),
    );

    return MaterialApp.router(
      title: 'Flute Quickboot',
      theme: m3Theme,
      debugShowCheckedModeBanner: false,
      routeInformationParser: BeamerParser(),
      routerDelegate: mainRouteDelegate,
    );
  }
}
