import 'dart:math';

import 'package:fluteqboot/controllers/base_controller.dart';

sealed class PopupResult {}

class PopupDefault extends PopupResult {}

class PopupSuccess extends PopupResult {
  final int currCounter;

  PopupSuccess({required this.currCounter});
}

class PopupError extends PopupResult {
  final String errMsg;

  PopupError({required this.errMsg});
}

class FeatureAState {
  final int counter;
  final PopupResult popupResult;

  FeatureAState({
    required this.counter,
    required this.popupResult,
  });

  FeatureAState copyWith({int? counter, PopupResult? popupResult}) =>
      FeatureAState(
        counter: counter ?? this.counter,
        popupResult: popupResult ?? this.popupResult,
      );
}

class FeatureAController extends Controller<FeatureAState> {
  FeatureAController()
      : super(
            initState: FeatureAState(counter: 0, popupResult: PopupDefault()));

  void increment() {
    emit(
      state.copyWith(counter: state.counter + 1),
    );

    if (state.counter % 5 == 0) {
      _showPopupWithResult();
    }
  }

  void decrement() {
    final counter = max(state.counter - 1, 0);
    emit(
      state.copyWith(counter: counter),
    );
  }

  void _showPopupWithResult() {
    emit(
      state.copyWith(
        popupResult: PopupSuccess(currCounter: state.counter),
      ),
    );
  }
}
