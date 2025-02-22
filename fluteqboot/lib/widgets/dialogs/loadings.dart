import 'package:flutter/material.dart';

class LoadingDialog extends StatelessWidget {
  const LoadingDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surface,
            borderRadius: BorderRadius.circular(12)),
        child: const Padding(
          padding: EdgeInsets.all(20.0),
          child: SizedBox(
              width: 48, height: 48, child: CircularProgressIndicator()),
        ),
      ),
    );
  }
}
