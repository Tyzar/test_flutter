import 'package:fluteqboot/formatters/number_formatter.dart';
import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({
    super.key,
    required this.title,
    required this.desc,
    required this.price,
    required this.imgPath,
  });

  final String title;
  final String imgPath;
  final String desc;
  final double price;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Card(
        elevation: 0,
        color: Theme.of(context).colorScheme.surfaceContainerLow,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(12), topRight: Radius.circular(12)),
              child: Image.network(
                imgPath,
                width: 200,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                title,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                desc,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: Theme.of(context)
                        .colorScheme
                        .onSurface
                        .withOpacity(0.5)),
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                toCurrencyFmt(price, locale: 'id_ID', symbol: 'Rp '),
                style: Theme.of(context)
                    .textTheme
                    .titleSmall
                    ?.copyWith(fontWeight: FontWeight.w600),
              ),
            ),
            const SizedBox(
              height: 16,
            )
          ],
        ),
      ),
    );
  }
}
