import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NavDestSvg {
  final String iconPath;
  final String? selectedIconPath;
  final String label;
  final String uri;

  NavDestSvg(
    this.uri, {
    required this.iconPath,
    this.selectedIconPath,
    required this.label,
  });
}

class NavBarWithSvgs extends StatelessWidget {
  const NavBarWithSvgs({
    super.key,
    required this.selectedIndex,
    required this.iconColor,
    required this.selectedIconColor,
    required this.navCount,
    required this.destBuilder,
    this.onDestinationSelected,
  });

  final int selectedIndex;
  final Color iconColor;
  final Color selectedIconColor;
  final int navCount;
  final NavDestSvg Function(BuildContext context, int index) destBuilder;
  final void Function(int)? onDestinationSelected;

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      selectedIndex: selectedIndex,
      destinations: _buildDestinations(context),
      onDestinationSelected: onDestinationSelected,
    );
  }

  List<NavigationDestination> _buildDestinations(BuildContext context) {
    List<NavigationDestination> navDests = [];
    NavDestSvg destWidget;
    for (var i = 0; i < navCount; i++) {
      destWidget = destBuilder(context, i);
      navDests.add(
        NavigationDestination(
          icon: SvgPicture.asset(
            i == selectedIndex
                ? destWidget.selectedIconPath ?? destWidget.iconPath
                : destWidget.iconPath,
            colorFilter: ColorFilter.mode(
              i == selectedIndex ? selectedIconColor : iconColor,
              BlendMode.srcIn,
            ),
          ),
          label: destWidget.label,
        ),
      );
    }

    return navDests;
  }
}
