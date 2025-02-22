import 'package:flutter/material.dart';
import 'package:fluteqboot/widgets/dialogs/show_overlay.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_flutter/utils/constants/asset_constants.dart';

class Test3Screen extends StatelessWidget {
  const Test3Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FilledButton(
          onPressed: () => showAppDialog(
              context: context,
              dismissable: false,
              dialog: Dialog(
                child: HelloDialog(
                  onClose: () => Navigator.of(
                    context,
                    rootNavigator: true,
                  ).pop(),
                ),
              )),
          child: const Text('Pop Up'),
        ),
      ),
    );
  }
}

class HelloDialog extends StatelessWidget {
  const HelloDialog({super.key, required this.onClose});

  final void Function() onClose;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                  onPressed: onClose, icon: const Icon(Icons.close_outlined)),
            ],
          ),
          Text(
            'Hello World!!',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(
            height: 16,
          ),
          FilledButton(onPressed: onClose, child: const Text('Close'))
        ],
      ),
    );
  }
}
