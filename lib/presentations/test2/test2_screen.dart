import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_flutter/presentations/test2/test2_controller.dart';

class Test2Screen extends StatelessWidget {
  const Test2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Test2Controller(),
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Selector<Test2Controller, int>(
                  selector: (p0, controller) => controller.state,
                  builder: (context, count, child) => FilledButton(
                    onPressed: () => context.read<Test2Controller>().add(),
                    child: const Text('Tambah'),
                  ),
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              Expanded(
                  child: Selector<Test2Controller, int>(
                selector: (p0, p1) => p1.state,
                builder: (context, value, child) => GridView.builder(
                  itemCount: value,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisSpacing: 16,
                      crossAxisCount: 3,
                      mainAxisSpacing: 16),
                  itemBuilder: (context, index) => const GridItemView(),
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}

class GridItemView extends StatelessWidget {
  const GridItemView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Theme.of(context).colorScheme.onSurface)),
      padding: const EdgeInsets.all(16),
      child: const Icon(
        Icons.call,
        size: 64,
      ),
    );
  }
}
