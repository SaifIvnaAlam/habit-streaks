import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:habitstreaks/dummy_db/list_habit.dart';
import 'package:habitstreaks/src/core/domain/habit.dart';
import 'package:meta/meta.dart';
import 'package:uuid/uuid.dart';

part 'create_habit_state.dart';

class CreateHabitCubit extends Cubit<CreateHabitState> {
  CreateHabitCubit() : super(CreateHabitInitial());
  Future<void> createHabit({required String name, required int target, required bool allowNotification}) async {
    Habit habit = Habit(name: name, target: target, allowNotification: allowNotification, id: Uuid().v4());
    inspect(habit);
    habits.add(habit);
    emit(CreateHabitSuccess(habit));
  }
}
