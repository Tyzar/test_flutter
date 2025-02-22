import 'package:flute_quickboot/presentations/feature_a/widgets/a_topbar.dart';
import 'package:flute_quickboot/presentations/feature_a/widgets/item_card.dart';
import 'package:flutter/material.dart';

class FluteItem {
  final int id;
  final String title;
  final String desc;
  final double price;
  final String imgPath;

  FluteItem({
    required this.id,
    required this.title,
    required this.desc,
    required this.price,
    required this.imgPath,
  });
}

class FeatureBScreen extends StatelessWidget {
  FeatureBScreen({super.key});

  final List<FluteItem> items = [
    FluteItem(
        id: 1,
        title: 'Nike Revolution 7 Easy On',
        desc: "An easy on edition of revolution shoes",
        price: 253250,
        imgPath:
            'https://static.nike.com/a/images/t_PDP_936_v1/f_auto,q_auto:eco/ca929f7e-f433-46b7-8d83-1a6171c172ce/NIKE+REVOLUTION+7+EASYON.png'),
    FluteItem(
        id: 2,
        title: 'Nike Revolution 7',
        desc: "For the revolutioner men",
        price: 253250,
        imgPath:
            'https://static.nike.com/a/images/t_PDP_936_v1/f_auto,q_auto:eco/450ed1df-8e17-4d87-a244-85697874661c/NIKE+REVOLUTION+7.png'),
    FluteItem(
        id: 3,
        title: 'Nike Interact Run',
        desc: "Run shoes that blazing fast",
        price: 253250,
        imgPath:
            'https://static.nike.com/a/images/t_PDP_936_v1/f_auto,q_auto:eco/65d684cb-c14a-43d4-80c2-c1c43b7892e6/NIKE+INTERACT+RUN.png'),
    FluteItem(
        id: 4,
        title: 'Nike ReactX',
        desc: "A reactive action shoes",
        price: 253250,
        imgPath:
            'https://static.nike.com/a/images/t_PDP_936_v1/f_auto,q_auto:eco/84dadb96-8116-48db-b489-093a5eebe310/NIKE+REACTX+INFINITY+RUN+4+W.png'),
    FluteItem(
        id: 5,
        title: 'Nike Dunk High',
        desc: "Get the dunk in",
        price: 253250,
        imgPath:
            'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/99486859-0ff3-46b4-949b-2d16af2ad421/custom-nike-dunk-high-by-you-shoes.png')
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const ATopbar(
          title: 'Feature B',
          showSearchBar: true,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: CustomScrollView(
            slivers: [
              SliverGrid(
                delegate: SliverChildBuilderDelegate(
                  childCount: items.length,
                  (context, index) => ItemCard(
                    title: items[index].title,
                    imgPath: items[index].imgPath,
                    desc: items[index].desc,
                    price: items[index].price,
                  ),
                ),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisExtent: 350,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 16,
                ),
              ),
              const SliverToBoxAdapter(
                child: SizedBox(
                  height: 64,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
