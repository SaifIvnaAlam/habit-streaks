part of 'load_habits_cubit.dart';

@immutable
sealed class LoadHabitsState {}

final class LoadHabitsInitial extends LoadHabitsState {}

final class LoadHabitsSuccess extends LoadHabitsState {
  final List<Habit> habits;
  LoadHabitsSuccess(this.habits);
}

final class LoadHabitsError extends LoadHabitsState {}
