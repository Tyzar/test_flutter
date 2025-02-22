import 'package:beamer/beamer.dart';
import 'package:flute_quickboot/presentations/routing/home_routing.dart';
import 'package:flute_quickboot/presentations/widgets/bottom_nav.dart';
import 'package:flute_quickboot/utils/constants/asset_constants.dart';
import 'package:flutter/material.dart';

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
    NavDestSvg('/home', iconPath: assetIconHome, label: 'Home'),
    NavDestSvg('/wishlist', iconPath: assetIconHeart, label: 'Wishlist'),
    NavDestSvg('/shop', iconPath: assetIconShop, label: 'Shop'),
    NavDestSvg('/info', iconPath: assetIconNotif, label: 'Info')
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
        builder: (context, value, child) => NavBarWithSvgs(
          selectedIndex: value,
          iconColor: Theme.of(context).colorScheme.onSurface.withOpacity(0.8),
          selectedIconColor: Theme.of(context).colorScheme.onPrimary,
          navCount: navDests.length,
          destBuilder: (context, index) => navDests[index],
          onDestinationSelected: (idx) {
            _homeNavKey.currentContext?.beamToReplacementNamed(
              navDests[idx].uri,
            );
            selectedIdx.value = idx;
          },
        ),
      ),
    );
  }
}
