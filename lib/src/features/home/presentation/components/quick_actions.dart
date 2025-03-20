import 'package:flutter/material.dart';
import 'package:habitstreaks/src/shared/app_colors.dart';
import 'package:habitstreaks/src/shared/app_text_style.dart';

Widget buildQuickActions() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      _buildQuickAction(Icons.add_task, 'New Task'),
      _buildQuickAction(Icons.calendar_today, 'Calendar'),
      _buildQuickAction(Icons.show_chart, 'Progress'),
    ],
  );
}

Widget _buildQuickAction(IconData icon, String label) {
  return Column(
    children: [
      Container(
        decoration: BoxDecoration(
          color: AppColors.inversePrimary.withOpacity(0.2),
          shape: BoxShape.circle,
        ),
        padding: const EdgeInsets.all(12),
        child: Icon(icon, color: AppColors.primary, size: 28),
      ),
      const SizedBox(height: 6),
      Text(label, style: AppTextStyles.captionText.copyWith(color: Colors.grey)),
    ],
  );
}
