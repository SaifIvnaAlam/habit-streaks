import 'package:flutter/material.dart';
import 'package:habitstreaks/src/core/widgets/scaffoldx.dart';

class CreateHabitPage extends StatelessWidget {
  const CreateHabitPage({super.key});
  static const String route = 'create_habit_page';
  @override
  Widget build(BuildContext context) {
    return ScaffoldX(
      body: Center(
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: "Name",
              ),
            ),
            Spacer(),
            TextButton(
              onPressed: () {
                print("Create Habit");
              },
              child: Text("Create Habit"),
            )
          ],
        ),
      ),
    );
  }
}
