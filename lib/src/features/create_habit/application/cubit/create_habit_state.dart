part of 'create_habit_cubit.dart';

@immutable
sealed class CreateHabitState {}

final class CreateHabitInitial extends CreateHabitState {}

final class CreateHabitSuccess extends CreateHabitState {
  final Habit habit;

  CreateHabitSuccess(this.habit);
}

final class CreateHabitError extends CreateHabitState {}
