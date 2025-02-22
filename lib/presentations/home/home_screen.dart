import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:test_flutter/presentations/routing/home_routing.dart';
import 'package:test_flutter/presentations/widgets/bottom_nav.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ValueNotifier<int> selectedIdx = ValueNotifier(0);
  final _homeNavKey = GlobalKey();
  final _homeRouteDelegate = BeamerDelegate(
    locationBuilder: (routeInfo, p1) => HomeRouteLocation(routeInfo),
  );

  final navDests = [
    NavDestSvg('/test1', iconPath: '', label: 'Test 1'),
    NavDestSvg('/test2', iconPath: '', label: 'Test 2'),
    NavDestSvg('/test3', iconPath: '', label: 'Test 3'),
    NavDestSvg('/photos', iconPath: '', label: 'Photos'),    
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Beamer(key: _homeNavKey, routerDelegate: _homeRouteDelegate)),
      bottomNavigationBar: ValueListenableBuilder(
          valueListenable: selectedIdx,
          builder: (context, value, child) => NavigationBar(
            selectedIndex: value,
              onDestinationSelected: (value) {
                selectedIdx.value = value;
                _homeRouteDelegate.beamToReplacementNamed(
                    navDests[value].uri,
                  );
              },
              destinations: navDests
                  .map(
                    (e) => NavigationDestination(
                      icon: const Icon(Icons.book_outlined),
                      label: e.label,
                    ),
                  )
                  .toList())),
    );
  }
}
