import 'package:flutter/material.dart';
import 'package:habitstreaks/src/shared/app_colors.dart';
import 'package:habitstreaks/src/shared/app_text_style.dart';

Widget buildSectionCard({required String title, required IconData icon, required Widget child}) {
  return Container(
    padding: const EdgeInsets.all(16),
    decoration: BoxDecoration(
      color: AppColors.secondary.withOpacity(.8),
      borderRadius: BorderRadius.circular(16),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(icon, color: Colors.white),
            const SizedBox(width: 8),
            Text(title, style: AppTextStyles.subtitle.copyWith(fontSize: 20)),
          ],
        ),
        const SizedBox(height: 10),
        child,
      ],
    ),
  );
}
