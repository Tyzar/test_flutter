import 'package:flutter/material.dart';

Future<T?> showAppDialog<T>({
  required BuildContext context,
  required Widget dialog,
  bool dismissable = false,
  void Function(T? data)? onBeforePop,
}) {
  return showDialog<T>(
    context: context,
    barrierDismissible: dismissable,
    builder: (context) => PopScope<T>(
      canPop: dismissable,
      onPopInvokedWithResult: (didPop, result) {
        if (!didPop) {
          onBeforePop?.call(result);
        }
      },
      child: dialog,
    ),
  );
}
