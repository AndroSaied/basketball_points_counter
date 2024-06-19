import 'package:basketball_points_counter/cubit/counter_cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitialState());

  int teamAP = 0;
  int teamBP = 0;

  void teamIncrement({required String team, required int buttonNum}) {
    if (team == "A") {
      teamAP += buttonNum;
      emit(CounterAIncrementState());
    } else if (team == "B") {
      teamBP += buttonNum;
      emit(CounterBIncrementState());
    }
  }

  void teamReset() {
    teamAP = 0;
    teamBP = 0;
    emit(CounterInitialState());
  }

}