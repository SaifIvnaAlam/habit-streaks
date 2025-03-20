import 'package:go_router/go_router.dart';
import 'package:habitstreaks/src/features/calendar/presentation/calendar_page.dart';
import 'package:habitstreaks/src/features/create_habit/presentation/create_habit_page.dart';
import 'package:habitstreaks/src/features/home/presentation/home_page.dart';
import 'package:habitstreaks/src/features/profile/presentation/profile_page.dart';
import 'package:habitstreaks/src/features/todo/presentation/create_todo_page.dart';
import 'package:habitstreaks/src/features/wrapper/presentation/wrapper_page.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      name: HomePage.route,
      path: '/',
      builder: (context, state) => HomePage(),
    ),
    GoRoute(
      name: CreateHabitPage.route,
      path: '/${CreateHabitPage.route}',
      builder: (context, state) => CreateHabitPage(),
    ),
    GoRoute(
      name: WrapperPage.route,
      path: '/${WrapperPage.route}',
      builder: (context, state) => WrapperPage(),
    ),
    GoRoute(
      name: ProfilePage.route,
      path: '/${ProfilePage.route}',
      builder: (context, state) => ProfilePage(),
    ),
    GoRoute(
      name: CreateTodoPage.route,
      path: '/${CreateTodoPage.route}',
      builder: (context, state) => CreateTodoPage(),
    ),
    GoRoute(
      name: CalendarPage.route,
      path: '/${CalendarPage.route}',
      builder: (context, state) => CalendarPage(),
    ),
  ],
);
