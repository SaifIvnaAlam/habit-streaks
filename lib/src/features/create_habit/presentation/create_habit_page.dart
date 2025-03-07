import 'package:flutter/cupertino.dart';
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
  final TextEditingController _targetController = TextEditingController();
  final TextEditingController _notificationTimer = TextEditingController();
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
              SizedBox(
                height: 20,
              ),
              TextField(
                controller: _targetController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: "Target Days",
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text("Allow notification?"), CupertinoSwitch(value: true, onChanged: (_) {})],
              ),
              Spacer(),
              TextButton(
                onPressed: () {
                  context.read<CreateHabitCubit>().createHabit(
                        name: _nameController.text,
                        allowNotification: true,
                        target: int.parse(_targetController.text),
                      );
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
