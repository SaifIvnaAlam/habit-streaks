import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:habitstreaks/src/features/profile/presentation/profile_page.dart';
import 'package:habitstreaks/src/shared/app_colors.dart';
import 'package:habitstreaks/src/shared/app_text_style.dart';

class PrimaryAppBar extends StatelessWidget {
  const PrimaryAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.primary,
      elevation: 0,
      title: Text('Dashboard', style: AppTextStyles.title.copyWith(fontSize: 20)),
      actions: [
        GestureDetector(
          onTap: () => context.go(ProfilePage.route),
          child: CircleAvatar(
            radius: 18,
            backgroundColor: AppColors.onPrimaryContainer,
            child: Icon(Icons.person, color: AppColors.primary),
          ),
        ),
        const SizedBox(width: 16),
      ],
    );
  }
}
