import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_flutter/presentations/test1/test1_controller.dart';

class Test1Screen extends StatelessWidget {
  const Test1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Test1Controller(),
      child: Scaffold(
        body: Consumer<Test1Controller>(
          builder: (context, value, child) => Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  FilledButton(
                      onPressed: () =>
                          context.read<Test1Controller>().reverse(),
                      child: const Text('Reverse')),
                  FilledButton(
                      onPressed: () =>
                          context.read<Test1Controller>().filterByKota(),
                      child: const Text('Filter')),
                  FilledButton(
                      onPressed: () =>
                          context.read<Test1Controller>().replaceKab(),
                      child: const Text('Replace')),
                  FilledButton(
                      onPressed: () =>
                          context.read<Test1Controller>().reset(),
                      child: const Text('Reset'))
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Expanded(
                  child: ListView.builder(
                itemCount: value.state.length,
                itemBuilder: (context, index) =>
                    Cities(city: value.state[index]),
              ))
            ],
          ),
        ),
      ),
    );
  }
}

class Cities extends StatelessWidget {
  const Cities({super.key, required this.city});

  final String city;

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(16), child: Text(city));
  }
}
