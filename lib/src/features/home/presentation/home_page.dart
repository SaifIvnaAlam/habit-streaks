import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:habitstreaks/src/core/widgets/scaffoldx.dart';
import 'package:habitstreaks/src/features/create_habit/presentation/create_habit_page.dart';
import 'package:habitstreaks/src/features/home/application/cubit/load_habits_cubit.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static const String route = 'home_page';

  @override
  Widget build(BuildContext context) {
    context.read<LoadHabitsCubit>().loadHabits();
    return ScaffoldX(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              context.goNamed(CreateHabitPage.route);
            },
            icon: Icon(Icons.add),
          ),
        ],
      ),
      body: BlocBuilder<LoadHabitsCubit, LoadHabitsState>(
        builder: (context, state) {
          if (state is LoadHabitsSuccess) {
            return Column(
              children: [
                Text("Count: ${state.habits.length}"),
                Flexible(
                  child: ListView.builder(
                    itemCount: state.habits.length,
                    itemBuilder: (context, index) {
                      final habit = state.habits[index];
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        child: SizedBox(
                          height: 100,
                          width: 100,
                          child: Card(
                            child: Center(
                              child: Column(
                                children: [
                                  Text(habit.name),
                                  Text(habit.id),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                )
              ],
            );
          } else {
            return CircularProgressIndicator();
          }
        },
      ),
    );
  }
}
