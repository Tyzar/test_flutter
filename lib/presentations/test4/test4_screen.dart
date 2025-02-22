import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_flutter/presentations/test4/controllers/photo_list_controller.dart';
import 'package:test_flutter/presentations/test4/providers/photo_providers.dart';

class Test4Screen extends StatefulWidget {
  const Test4Screen({super.key});

  @override
  State<Test4Screen> createState() => _Test4ScreenState();
}

class _Test4ScreenState extends State<Test4Screen> {
  late PhotoListController _controller;

  @override
  void initState() {
    super.initState();
    _controller = context.read<PhotoListController>();
    _initialize();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) =>
          PhotoListController(context.read<PhotoProviders>())..initialize(),
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Selector<PhotoListController, PhotoListState>(
            selector: (p0, p1) => p1.state,
            builder: (context, state, child) => state.isLoading
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : ListView.builder(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    itemBuilder: (context, index) => ThumbnailItemView(
                      onTap: () => Beamer.of(context)
                          .beamToNamed('/photos/${state.photos[index].id}'),
                      id: state.photos[index].id,
                      title: state.photos[index].title,
                      thumbnailUri: state.photos[index].thumbnailUri,
                      uri: state.photos[index].uri,
                    ),
                    itemCount: state.photos.length,
                  ),
          ),
        ),
      ),
    );
  }

  Future<void> _initialize() async {
    await Future.delayed(const Duration(seconds: 1));
    _controller.initialize();
  }
}

class ThumbnailItemView extends StatelessWidget {
  const ThumbnailItemView({
    super.key,
    required this.id,
    required this.title,
    required this.thumbnailUri,
    required this.uri,
    required this.onTap,
  });

  final int id;
  final String title;
  final String thumbnailUri;
  final String uri;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        child: Container(
          height: 120,
          padding: const EdgeInsets.all(16),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.network(
                thumbnailUri,
                width: 100,
                height: 100,
                errorBuilder: (context, error, stackTrace) => Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(12)),
                  child: const Icon(
                    Icons.photo_outlined,
                    size: 100,
                  ),
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              Expanded(
                  child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    '$id',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  const Spacer(),
                  Text(
                    title,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.titleMedium,
                  )
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
