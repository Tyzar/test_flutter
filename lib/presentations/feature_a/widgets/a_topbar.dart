import 'package:flute_quickboot/utils/constants/asset_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ATopbar extends StatelessWidget implements PreferredSizeWidget {
  const ATopbar({
    super.key,
    required this.title,
    this.showSearchBar = false,
  });

  final String title;
  final bool showSearchBar;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 16,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              SizedBox(
                width: 44,
                height: 44,
                child: Stack(
                  children: [
                    Container(
                      width: MediaQuery.sizeOf(context).width,
                      height: MediaQuery.sizeOf(context).height,
                      decoration: BoxDecoration(
                          color:
                              Theme.of(context).colorScheme.surfaceContainerLow,
                          shape: BoxShape.circle),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: SvgPicture.asset(
                        assetIconBack,
                        width: 11,
                        height: 11,
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                  child: Text(
                title,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleMedium,
              )),
              SvgPicture.asset(
                assetIconFilter,
                width: 24,
                height: 24,
              ),
              const SizedBox(
                width: 16,
              ),
              SvgPicture.asset(
                assetIconSearch,
                width: 24,
                height: 24,
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          if (showSearchBar)
            const TextField(
              decoration: InputDecoration(
                  hintText: 'Type or search products',
                  prefixIcon: Icon(Icons.search_outlined)),
            ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(160);
}
