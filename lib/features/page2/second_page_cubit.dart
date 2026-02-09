import 'package:flutter_bloc/flutter_bloc.dart';

class SecondPageCubit extends Cubit<int> {
  SecondPageCubit() : super(0);

  void increment() => emit(state + 1);
}
