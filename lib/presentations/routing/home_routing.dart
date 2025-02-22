import 'package:beamer/beamer.dart';
import 'package:flute_quickboot/presentations/feature_a/feature_a_screen.dart';
import 'package:flute_quickboot/presentations/feature_a/feature_b_screen.dart';
import 'package:flutter/material.dart';

class HomeRouteLocation extends BeamLocation<BeamState> {
  HomeRouteLocation(super.routeInformation);

  @override
  List<BeamPage> buildPages(BuildContext context, BeamState state) {
    return [
      const BeamPage(key: ValueKey('Home'), child: FeatureAScreen()),
      if (state.uri.pathSegments.contains('wishlist'))
        const BeamPage(
            key: ValueKey('Favorite'),
            child: Center(
              child: Text('Favorite Content'),
            )),
      if (state.uri.pathSegments.contains('shop'))
        BeamPage(key: const ValueKey('Shop'), child: FeatureBScreen()),
      if (state.uri.pathSegments.contains('info'))
        const BeamPage(
            key: ValueKey('Info'),
            child: Center(
              child: Text('Info Content'),
            ))
    ];
  }

  @override
  List<Pattern> get pathPatterns => ['/home', '/favorite', '/shop', '/info'];
}
