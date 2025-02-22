import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:test_flutter/presentations/test1/test1_screen.dart';
import 'package:test_flutter/presentations/test2/test2_screen.dart';
import 'package:test_flutter/presentations/test3/test3_screen.dart';
import 'package:test_flutter/presentations/test4/photo_detail_screen.dart';
import 'package:test_flutter/presentations/test4/test4_screen.dart';

class HomeRouteLocation extends BeamLocation<BeamState> {
  HomeRouteLocation(super.routeInformation);

  @override
  List<BeamPage> buildPages(BuildContext context, BeamState state) {
    final pages = [
      const BeamPage(key: ValueKey('Test1'), child: Test1Screen()),
      if (state.uri.pathSegments.contains('test2'))
        const BeamPage(
          key: ValueKey('Test2'),
          child: Test2Screen(),
        ),
      if (state.uri.pathSegments.contains('test3'))
        const BeamPage(key: ValueKey('Test3'), child: Test3Screen()),
      if (state.uri.pathSegments.contains('photos') &&
          state.pathParameters.isEmpty)
        const BeamPage(key: ValueKey('Photos'), child: Test4Screen()),
    ];

    if (state.uri.pathSegments.contains('photos') &&
        state.pathParameters.isNotEmpty) {
      pages.add(BeamPage(
          key: const ValueKey('Photos-Detail'),
          child: PhotoDetailScreen(
              photoId:
                  int.tryParse(state.pathParameters['photoid'] ?? '') ?? 0)));
    }

    return pages;
  }

  @override
  List<Pattern> get pathPatterns =>
      ['/test1', '/test2', '/test3', '/photos', '/photos/:photoid'];
}
