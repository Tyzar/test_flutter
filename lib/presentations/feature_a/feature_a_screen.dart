import 'dart:developer';

import 'package:flute_quickboot/presentations/feature_a/controllers/feature_a_controller.dart';
import 'package:flute_quickboot/presentations/feature_a/widgets/a_topbar.dart';
import 'package:fluteqboot/controllers/event_listener.dart';
import 'package:fluteqboot/widgets/dialogs/loadings.dart';
import 'package:fluteqboot/widgets/dialogs/show_overlay.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FeatureAScreen extends StatelessWidget {
  const FeatureAScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => FeatureAController(),
      builder: (context, child) =>
          EventListener<FeatureAController, PopupResult>(
        listener: (context, value) {
          switch (value) {
            case PopupSuccess():
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text('Current counter ${value.currCounter}')));
              break;
            case PopupError():
              break;
            default:
              break;
          }
        },
        onValue: () => context.read<FeatureAController>().state.popupResult,
        child: Scaffold(
          appBar: const ATopbar(title: 'Counter'),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Selector<FeatureAController, int>(
                  selector: (context, controller) => controller.state.counter,
                  builder: (context, counter, child) => Text(
                    'Counter number : $counter',
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Consumer(
                  builder: (context, value, child) => Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FilledButton(
                          onPressed: () =>
                              context.read<FeatureAController>().increment(),
                          child: const Text('Increment')),
                      const SizedBox(
                        width: 8,
                      ),
                      FilledButton(
                          onPressed: () =>
                              context.read<FeatureAController>().decrement(),
                          child: const Text('Decrement'))
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  _showConfirmationSheet(BuildContext context) {
    log('Show confirmation dialog');
    showAppDialog(
        context: context,
        dialog: AlertDialog(
          title: const Text('Cancel Progress'),
          content: const Text('Are you sure want to cancel this progress'),
          actions: [
            FilledButton(
                onPressed: () {
                  Navigator.of(context, rootNavigator: true).pop();
                },
                child: const Text('Cancel'))
          ],
        ));
  }
}
