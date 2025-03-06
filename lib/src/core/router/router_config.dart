import 'package:go_router/go_router.dart';
import 'package:habitstreaks/src/features/create_habit/presentation/create_habit_page.dart';
import 'package:habitstreaks/src/features/home/presentation/home_page.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      name: HomePage.route,
      path: '/',
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      name: CreateHabitPage.route,
      path: '/${CreateHabitPage.route}',
      builder: (context, state) => const CreateHabitPage(),
    ),
  ],
);
