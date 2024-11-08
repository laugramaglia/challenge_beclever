import 'package:flutter_bloc/flutter_bloc.dart';

class StepperIndexCubit extends Cubit<int> {
  final int lenth;
  StepperIndexCubit(this.lenth) : super(0);

  bool get isFirstPage => state == 0;

  void nextPage() {
    if (state == lenth - 1) return;
    emit(state + 1);
  }

  void previousPage() {
    if (state == 0) return;
    emit(state - 1);
  }
}
