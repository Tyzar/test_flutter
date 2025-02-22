import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_flutter/presentations/test4/controllers/photo_detail_controller.dart';
import 'package:test_flutter/presentations/test4/providers/photo_providers.dart';

class PhotoDetailScreen extends StatelessWidget {
  const PhotoDetailScreen({super.key, required this.photoId});

  final int photoId;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => PhotoDetailController(context.read<PhotoProviders>())
        ..getDetail(photoId: photoId),
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () => Beamer.of(context).popRoute(),
              icon: const Icon(Icons.arrow_back)),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'ID',
                            textAlign: TextAlign.left,
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Title',
                            textAlign: TextAlign.left,
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Album ID',
                            textAlign: TextAlign.left,
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Row(
                    children: [
                      Consumer<PhotoDetailController>(
                        builder: (context, value, child) => Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(value.state?.id.toString() ?? '#'),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(value.state?.title ?? 'Unknown'),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(value.state?.albumId.toString() ?? '#'),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 32,
              ),
              Consumer<PhotoDetailController>(
                builder: (context, value, child) => ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: SizedBox(
                    width: MediaQuery.sizeOf(context).width,
                    child: Center(
                      child: Image.network(
                        value.state?.uri ?? '',
                        errorBuilder: (context, error, stackTrace) => Icon(
                          Icons.photo_outlined,
                          size: MediaQuery.sizeOf(context).width * 0.8,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
