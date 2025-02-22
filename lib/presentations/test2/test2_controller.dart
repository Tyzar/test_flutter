import 'package:fluteqboot/controllers/base_controller.dart';

class Test2Controller extends Controller<int> {
  Test2Controller() : super(initState: 0);

  void add() {
    emit(state + 1);
  }
}
