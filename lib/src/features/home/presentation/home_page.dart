import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:habitstreaks/src/core/router/router_config.dart';
import 'package:habitstreaks/src/features/create_habit/presentation/create_habit_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
static const String route = 'home_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Center(
        child: Text("HomePage"),
      ),
    );
  }
}
