import 'dart:developer';

import 'package:fluteqboot/controllers/base_controller.dart';

final resetValues = [
  'Kota Surabaya',
  'kota Medan',
  'kab. Malang',
  'Kab. Sidoarjo',
  'KOTA JAKARTA',
  'KAB. Banyuwangi',
  'KOTA Banjarmasin',
  'kab. Gresik',
];

class Test1Controller extends Controller<List<String>> {
  Test1Controller() : super(initState: resetValues);

  void reverse() {
    for (var i = 0; i < state.length ~/ 2; i++) {
      final swapIdx = state.length - 1 - i;
      final temp = state[i];
      final swap = state[swapIdx];
      state[i] = swap;
      state[swapIdx] = temp;
    }

    emit(state);
  }

  void filterByKota() {
    final List<String> out = [];
    for (var city in state) {
      if (city.toLowerCase().contains('kota')) {
        out.add(city);
      }
    }

    emit(out);
  }

  void replaceKab() {
    final List<String> out = [];
    for (var city in state) {
      final split = city.trim().split(' ');
      final refer = split[0].toLowerCase();
      if (refer.contains('kab.')) {
        out.add('${refer.replaceFirst('kab.', 'Kabupaten')} ${split[1]}');
      } else {
        out.add(city);
      }
    }

    emit(out);
  }

  void reset() {
    emit(resetValues);
  }
}
