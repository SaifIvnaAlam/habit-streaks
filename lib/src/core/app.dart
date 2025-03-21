import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:habitstreaks/src/core/router/router_config.dart';
import 'package:habitstreaks/src/features/create_habit/application/cubit/create_habit_cubit.dart';
import 'package:habitstreaks/src/features/home/application/cubit/load_habits_cubit.dart';
import 'package:habitstreaks/src/shared/app_colors.dart';
import 'package:habitstreaks/src/shared/app_text_style.dart';
import 'package:habitstreaks/src/shared/custom_color_scheme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => CreateHabitCubit(),
        ),
        BlocProvider(
          create: (context) => LoadHabitsCubit(),
        ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: AppColors.primary, // Example background color
          textTheme: TextTheme(
            displayLarge: AppTextStyles.title,
            displayMedium: AppTextStyles.subtitle,
            bodyLarge: AppTextStyles.bodyText,
            labelLarge: AppTextStyles.buttonText,
            bodySmall: AppTextStyles.captionText,
          ),
          colorScheme: customColorScheme,
          useMaterial3: true,
        ),
        routerConfig: router,
      ),
    );
  }
}
