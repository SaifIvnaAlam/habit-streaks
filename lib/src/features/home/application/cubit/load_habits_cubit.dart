import 'package:bloc/bloc.dart';
import 'package:habitstreaks/dummy_db/list_habit.dart';
import 'package:habitstreaks/src/core/domain/habit.dart';
import 'package:meta/meta.dart';

part 'load_habits_state.dart';

class LoadHabitsCubit extends Cubit<LoadHabitsState> {
  LoadHabitsCubit() : super(LoadHabitsInitial());

  Future<void> loadHabits() async {
    List<Habit> dbHabits = habits;
    emit(LoadHabitsSuccess(dbHabits));
  }
}
