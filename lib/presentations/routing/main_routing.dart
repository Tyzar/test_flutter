import 'package:beamer/beamer.dart';
import 'package:flute_quickboot/presentations/home/home_screen.dart';
import 'package:flutter/material.dart';

class MainRouteLocation extends BeamLocation<BeamState> {
  MainRouteLocation(super.routeInformation);

  @override
  List<BeamPage> buildPages(BuildContext context, BeamState state) {
    return [
      const BeamPage(key: ValueKey('Home'), child: HomeScreen()),
    ];
  }

  @override
  List<Pattern> get pathPatterns => ['*'];
}
