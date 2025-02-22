import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class EventListener<T extends ChangeNotifier, S> extends StatefulWidget {
  const EventListener({
    super.key,
    required this.child,
    required this.listener,
    required this.onValue,
  });

  final Widget child;
  final void Function(BuildContext context, S value) listener;
  final S Function() onValue;

  @override
  State<EventListener<T, S>> createState() => _EventListenerState<T, S>();
}

class _EventListenerState<T extends ChangeNotifier, S>
    extends State<EventListener<T, S>> {
  late T _notifier;
  late S _value;

  @override
  void initState() {
    super.initState();

    _value = widget.onValue();
    widget.listener(context, _value);

    _notifier = context.read<T>();
    _notifier.addListener(_handleStateChanged);
  }

  void _handleStateChanged() {
    final newVal = widget.onValue();
    if (_value == newVal) {
      return;
    }

    _value = newVal;
    widget.listener(context, _value);
  }

  @override
  void dispose() {
    _notifier.removeListener(_handleStateChanged);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
