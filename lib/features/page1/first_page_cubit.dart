import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_task/design/palette.dart';

import 'first_page_state.dart';

class FirstPageCubit extends Cubit<FirstPageState> {
  FirstPageCubit() : super(const FirstPageState());

  int _step = 0;

  void onLogoTap() {
    HapticFeedback.mediumImpact();
    _step = (_step + 1) % 4;
    switch (_step) {
      case 1:
        emit(state.copyWith(left: Pallete.black));
      case 2:
        emit(state.copyWith(right: Pallete.brown));
      case 3:
        emit(state.copyWith(left: Pallete.lightGrey));
      case 0:
        emit(state.copyWith(right: Pallete.lightGrey));
    }
  }
}
