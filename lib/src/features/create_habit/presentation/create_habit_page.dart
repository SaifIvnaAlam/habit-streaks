import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:habitstreaks/src/core/widgets/scaffoldx.dart';
import 'package:habitstreaks/src/features/create_habit/application/cubit/create_habit_cubit.dart';
import 'package:habitstreaks/src/features/home/presentation/home_page.dart';

class CreateHabitPage extends StatelessWidget {
  CreateHabitPage({super.key});
  static const String route = 'create_habit_page';
  final TextEditingController _nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocListener<CreateHabitCubit, CreateHabitState>(
      listener: (context, state) {
        if (state is CreateHabitSuccess) {
          context.goNamed(HomePage.route);
        }
      },
      child: ScaffoldX(
        body: Center(
          child: Column(
            children: [
              TextField(
                controller: _nameController,
                decoration: InputDecoration(
                  hintText: "Name",
                ),
              ),
              Spacer(),
              TextButton(
                onPressed: () {
                  context.read<CreateHabitCubit>().createHabit(name: _nameController.text);
                },
                child: Text("Create Habit"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
