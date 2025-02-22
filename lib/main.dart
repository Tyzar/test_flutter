import 'package:beamer/beamer.dart';
import 'package:dio/dio.dart';
import 'package:fluteqboot/themes/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_flutter/presentations/routing/main_routing.dart';
import 'package:fluteqboot/network/dio_http.dart';
import 'package:test_flutter/presentations/test4/providers/photo_providers.dart';

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

    return MultiProvider(
      providers: [
        Provider<Dio>(
          create: (context) =>
              createDio(baseUrl: '', timeout: const Duration(seconds: 30)),
        ),
        Provider(
            create: (context) => PhotoProviders(
                  context.read<Dio>(),
                )),
      ],
      child: MaterialApp.router(
        title: 'Flutter Test',
        theme: m3Theme,
        debugShowCheckedModeBanner: false,
        routeInformationParser: BeamerParser(),
        routerDelegate: mainRouteDelegate,
      ),
    );
  }
}
